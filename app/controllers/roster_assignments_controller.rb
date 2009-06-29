class RosterAssignmentsController < ApplicationController
  def index
    @roster_assignments = RosterAssignment.all
  end
  
  def show
    @roster_assignment = RosterAssignment.find(params[:id])
  end
  
  def new
    @player = Player.find(params[:format])
    
    @fantasy_team = FantasyTeam.find(:all, :include => [ :league, :user], :conditions => { 'leagues.id' => @current_league, 'users.id' => current_user } ).last
    @roster_assignment = RosterAssignment.new
    @roster_assignment.player = @player
    @roster_assignment.fantasy_team = @fantasy_team
    @roster_assignment.save
    
    redirect_to @current_league
  end
  
  def create
    @roster_assignment = RosterAssignment.new(params[:roster_assignment])
    if @roster_assignment.save
      flash[:notice] = "Successfully created rosterassignment."
      redirect_to @roster_assignment
    else
      render :action => 'new'
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
    @roster_assignment = RosterAssignment.find(params[:id])
    @roster_assignment.destroy
    flash[:notice] = "Successfully destroyed rosterassignment."
    redirect_to roster_assignments_url
  end
end
