class Array
  # Converts [[k1,v1],[k2,v2]] into {k1 => v1, k2 => v2}
  # The opposite of Hash#to_a
  def to_h
    a = dup
    a << nil if a.size % 2 == 1
    Hash[*a]
  end
end
class LeaguesController < ApplicationController
  
  def index
    @leagues = League.all
  end
  
  def show
    if params[:id]
      @league = League.find(params[:id])      
    elsif @current_league
      @league = @current_league
    else
      flash[:notice] = "We have no record of this league. Go ahead and create one now! :)"
      redirect_to new_league_team_url
    end
    
    @teams = @league.fantasy_teams
    @all_matchups = @league.matchups
    
    @available_players = Player.available_in_league(@league.name)
  end
  
  def new
    @league = League.new
  end
  
  def create
    @league = League.new(params[:league])
    if @league.save
      flash[:notice] = "Successfully created league."
      redirect_to @league
    else
      render :action => 'new'
    end
  end
  
  def edit
    @league = League.find(params[:id])
  end
  
  def update
    @league = League.find(params[:id])
    if @league.update_attributes(params[:league])
      flash[:notice] = "Successfully updated league."
      redirect_to @league
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @league = League.find(params[:id])
    @league.destroy
    flash[:notice] = "Successfully destroyed league."
    redirect_to leagues_url
  end
end
