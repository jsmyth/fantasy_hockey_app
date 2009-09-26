class FantasySeasonsController < InheritedResources::Base
  respond_to :html, :xml
  respond_to :json, :only => :index
  respond_to :atom, :only => :index

  def show
    if params[:id]
      @fantasy_season = FantasySeason.find(params[:id])      
    else
      flash[:notice] = "We have no record of this league. Go ahead and create one now! :)"
      redirect_to new_league_team_url
    end

    @league = @fantasy_season.league
    @teams = @fantasy_season.fantasy_teams
    @all_matchups = @fantasy_season.matchups
    
    @available_players = Player.available_in_fantasy_season(@fantasy_season)
  end
  
  def new
    @fantasy_season = FantasySeason.new
    @nhl_seasons = NhlSeason.all
    @leagues = League.all
  end

  def draft
    if params[:id]
      @fantasy_season = FantasySeason.find(params[:id])      
    elsif @current_fantasy_season
      @fantasy_season = @current_fantasy_season
    else
      flash[:notice] = "We have no record of this fantasy season. Go ahead and create one now! :)"
      redirect_to new_fantasy_season_url
    end
    
    @league = @fantasy_season.league
    @teams = @fantasy_season.fantasy_teams
    
    @available_players = Player.available_in_fantasy_season(@fantasy_season)
    
    @current_draft_pick = @fantasy_season.draft_picks.find(:all, :conditions => ['player_id IS NULL']).first
    @upcoming_draft_picks = @fantasy_season.draft_picks.find(:all, :conditions => ['player_id IS NULL'])[1..7]
    @previous_draft_picks = @fantasy_season.draft_picks.find(:all, :conditions => ['player_id IS NOT NULL'])[-2..-1]
    render :layout => "draft"
  end

  def draft_results
    if params[:id]
      @fantasy_season = FantasySeason.find(params[:id])      
    elsif @current_fantasy_season
      @fantasy_season = @current_fantasy_season
    else
      flash[:notice] = "We have no record of this fantasy season. Go ahead and create one now! :)"
      redirect_to new_fantasy_season_url
    end
    
    @league = @fantasy_season.league
    
    @unavailable_players = Player.unavailable_in_fantasy_season(@fantasy_season) || ['']
    @draft_picks = @fantasy_season.draft_picks.find(:all, :conditions => ['draft_picks.player_id IS NOT NULL'])
  end
  
  def draft_order
    @secret_number = 237237
    if params[:id]
      @fantasy_season = FantasySeason.find(params[:id])      
    elsif @current_fantasy_season
      @fantasy_season = @current_fantasy_season
    else
      flash[:notice] = "We have no record of this fantasy season. Go ahead and create one now! :)"
      redirect_to new_fantasy_season_url
    end
    
    @fantasy_teams = @fantasy_season.fantasy_teams
    @number_of_fantasy_teams = @fantasy_teams.count
    
    @draft_picks = @fantasy_season.draft_picks
    @draft_picks = @draft_picks.exists? ? @draft_picks : @fantasy_season.draft_order()
    
    @draft_pick = DraftPick.new
    
    @draft_pick_number = 0
  end

  def sort_fantasy_teams
    #fantasy_season = @current_fantasy_season
    fantasy_season = FantasySeason.find(params[:id])
    fantasy_teams = fantasy_season.fantasy_teams
    fantasy_season.participations.each do |participation|
      participation.position = params['fantasy_team'].index(participation.fantasy_team_id.to_s).to_i + 1
      participation.save
    end

    render :nothing => true
  end
  
  def snap_draft
    if params[:id]
      @fantasy_season = FantasySeason.find(params[:id])      
    elsif @current_fantasy_season
      @fantasy_season = @current_fantasy_season
    else
      flash[:notice] = "We have no record of this fantasy season. Go ahead and create one now! :)"
      redirect_to new_fantasy_season_url
    end
    @number_of_fantasy_teams = @fantasy_season.fantasy_teams.count
    @virtual_draft_picks = @fantasy_season.draft_order()
    
    @virtual_draft_picks.each do |virtual_draft_pick|
      draft_pick = DraftPick.create(:fantasy_season => @fantasy_season, :fantasy_team => virtual_draft_pick)
    end
    @fantasy_season.snap_draft!
    redirect_to draft_order_fantasy_season_url(@fantasy_season)
  end

  def freeze_draft
    if params[:id]
      @fantasy_season = FantasySeason.find(params[:id])      
    else
      flash[:error] = "We have no record of this fantasy season. Go ahead and create one now! :)"
      redirect_to new_fantasy_season_url
    end

    @draft_picks    = @fantasy_season.draft_picks
    @original_order = @fantasy_season.fantasy_teams
    
    @roster_fill_out_picks = Array.new

    flash[:notice] = "The following changes were made: "
    
    @draft_picks.group_by(&:fantasy_team).each do |fantasy_team, draft_picks|
      number_of_draft_picks = draft_picks.count
      number_of_draft_picks_needed = fantasy_team.number_of_draft_picks_needed(@fantasy_season)
      if number_of_draft_picks > number_of_draft_picks_needed
        differential = number_of_draft_picks - number_of_draft_picks_needed
        differential.times{ fantasy_team.draft_picks.last.destroy }
        flash[:notice] += "#{fantasy_team.name} (-#{differential})"
      elsif number_of_draft_picks < number_of_draft_picks_needed
        differential = number_of_draft_picks_needed - number_of_draft_picks
        differential.times{ @roster_fill_out_picks << fantasy_team.id }
        flash[:notice] += "#{fantasy_team.name} (+#{differential})"
      end
    end
    
    highest_number_of_draft_picks = @roster_fill_out_picks.count_of_most_frequent

    highest_number_of_draft_picks.times do |round|
      if round.even?
        @original_order.each do |seeded_fantasy_team|
          if @roster_fill_out_picks.include?(seeded_fantasy_team.id)
            @roster_fill_out_picks.delete_first(seeded_fantasy_team.id)
            draft_pick = DraftPick.create :fantasy_team => seeded_fantasy_team, :fantasy_season => @fantasy_season
          end
        end
      else
        @original_order.reverse.each do |seeded_fantasy_team|
          if @roster_fill_out_picks.include?(seeded_fantasy_team.id)
            @roster_fill_out_picks.delete_first(seeded_fantasy_team.id)
            draft_pick = DraftPick.create :fantasy_team => seeded_fantasy_team, :fantasy_season => @fantasy_season
          end
        end
      end
    end
    
    @draft_pick_number = 0

    @fantasy_season.freeze_draft!
    redirect_to draft_order_fantasy_season_url(@fantasy_season)
  end

  def update_draft_pick
    fantasy_season = FantasySeason.find params[:id]
    fantasy_team_name = params[:new_value]
    draft_pick_number = params[:draft_pick].to_i - 1
    
    fantasy_team = fantasy_season.fantasy_teams.find_by_name fantasy_team_name
        
    draft_picks = fantasy_season.draft_picks
    draft_pick = draft_picks[draft_pick_number]
    draft_pick.fantasy_team = fantasy_team
    draft_pick.save
    
    render :nothing => true
  end
end

class Array
  # Converts [[k1,v1],[k2,v2]] or [k1, v1, k2, v2] into {k1 => v1, k2 => v2}
  # The opposite of Hash#to_a
  def to_h
    a = dup
    a << nil if a.size % 2 == 1
    Hash[*a]
  end
  
  def generate_hash_of_frequencies
    the_frequency_of = Hash.new(0)
    self.each {|this_element| the_frequency_of[this_element] += 1 }
    return the_frequency_of
  end
  
  def count_of_most_frequent
    hash_of_frequencies = self.generate_hash_of_frequencies
    return hash_of_frequencies.values.max
  end
  
  def delete_first(to_delete)
    self.each_with_index do |item, index|
      return delete_at(index) if item == to_delete
    end
    return nil
  end
end