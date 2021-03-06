class RosterAssignmentsController < ApplicationController
  def index
    @roster_assignments = RosterAssignment.all
  end
  
  def show
    @roster_assignment = RosterAssignment.find(params[:id])
  end
  
  def new
    @roster_assignment = RosterAssignment.new
  end
  
  def create
    @player = Player.find(params[:id])
    @roster_assignment = RosterAssignment.new
    @roster_assignment.player = @player
    
    # If we're drafting
    if params[:draft_player]
      unless @current_state == 'draft_frozen' && commissioner?
        flash[:error] = "Your draft must be frozen in order to draft."
        redirect_to fantasy_season_url(@current_fantasy_season) and return
      end
      @draft_pick = DraftPick.find params[:draft_pick]
      @draft_pick.player = @player
      if @draft_pick.save
        @roster_assignment.fantasy_team = @draft_pick.fantasy_team
        @roster_assignment.minor_league = true if params[:minor_league]
        if @roster_assignment.save
          flash[:notice] = "Successfully drafted #{@player.name}."
          if @current_fantasy_season.draft_picks.find(:all, :conditions => {:player_id => nil}).count == 0
            @current_fantasy_season.start_season!
            redirect_to draft_results_fantasy_season_url(@current_fantasy_season)
          else
            redirect_to draft_fantasy_season_url(@current_fantasy_season)
          end
        else
          flash[:error] = "Can't assign #{@player.name} to your team."
          redirect_to draft_fantasy_season_url(@current_fantasy_season)
        end
      else
        flash[:error] = "Can't draft #{@player.name}!"
        redirect_to draft_fantasy_season_url(@current_fantasy_season)
      end
    else # Not drafting
      if @current_state == 'regular_season'
        @roster_assignment.fantasy_team = @current_fantasy_team
        if @roster_assignment.save
          flash[:notice] = "Successfully added #{@player.name} to #{@current_fantasy_team.name}."
          redirect_to @current_fantasy_team
        else
          flash[:error] = "Can't add #{@player.name} to #{@current_fantasy_team.name}."
          redirect_to @current_fantasy_team
        end
      else
        flash[:error] = "Can't add #{@player.name} to #{@current_fantasy_team.name}: You can only add players to your team during the regular season."
        redirect_to @current_fantasy_team
      end
    end
  end
  
  def edit
    @roster_assignment = RosterAssignment.find(params[:id])
  end
  
  def update
    @roster_assignment = RosterAssignment.find(params[:id])
    if @roster_assignment.update_attributes(params[:roster_assignment])
      flash[:notice] = "Successfully updated rosterassignment."
      redirect_to @roster_assignment
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @player = Player.find(params[:id])
    @fantasy_team = FantasyTeam.find(:all, :include => [ :fantasy_seasons, :user], :conditions => { 'fantasy_seasons.id' => @current_fantasy_season, 'users.id' => current_user } ).last
    @roster_assignment = RosterAssignment.find(:all, :conditions => { :fantasy_team_id => @fantasy_team, :player_id => @player }).last
    @roster_assignment.destroy
    flash[:notice] = "Successfully removed #{@player.name}."
    redirect_to fantasy_team_url @fantasy_team
  end
end
