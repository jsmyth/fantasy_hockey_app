class FantasyTeamsController < ApplicationController
  def index
    @fantasy_teams = FantasyTeam.all
  end
  
  def show
    if params[:id]
      @fantasy_team = FantasyTeam.find(params[:id])      
    elsif first_fantasy_team = current_user.fantasy_teams.first
      @fantasy_team = first_fantasy_team
    else
      flash[:notice] = "Looks like you don't have any fantasy teams. Go ahead and create one now! :)"
      redirect_to new_fantasy_team_url
    end
  end
  
  def new
    @fantasy_team = FantasyTeam.new
  end
  
  def create
    @fantasy_team = FantasyTeam.new(params[:fantasy_team])
    if @fantasy_team.save
      flash[:notice] = "Successfully created fantasyteam."
      redirect_to @fantasy_team
    else
      render :action => 'new'
    end
  end
  
  def edit
    @fantasy_team = FantasyTeam.find(params[:id])
  end
  
  def update
    @fantasy_team = FantasyTeam.find(params[:id])
    if @fantasy_team.update_attributes(params[:fantasy_team])
      flash[:notice] = "Successfully updated fantasyteam."
      redirect_to @fantasy_team
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @fantasy_team = FantasyTeam.find(params[:id])
    @fantasy_team.destroy
    flash[:notice] = "Successfully destroyed fantasyteam."
    redirect_to fantasy_teams_url
  end
end
