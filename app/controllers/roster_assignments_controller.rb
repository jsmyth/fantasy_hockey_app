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
    
    @fantasy_team = @current_fantasy_team
    @roster_assignment = RosterAssignment.new
    @roster_assignment.player = @player
    @roster_assignment.fantasy_team = @fantasy_team
    
    
    if @roster_assignment.save
      if params[:draft_player]
        @draft_pick = DraftPick.find params[:draft_pick]
        @draft_pick.player = @player
        if @draft_pick.save
          flash[:notice] = "Successfully drafter #{@player.name}."
          redirect_to draft_fantasy_season_url(@current_fantasy_season)
        else
          flash[:error] = "Can't draft #{@player.name} to your team."
          redirect_to draft_fantasy_season_url(@current_fantasy_season)
        end
      else
        flash[:notice] = "Successfully added #{@player.name}."
        redirect_to @fantasy_team
      end
    else
      flash[:error] = "Can't assign that player to your team."
      redirect_to @current_fantasy_season
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
