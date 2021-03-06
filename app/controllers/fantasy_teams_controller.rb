class FantasyTeamsController < ApplicationController
  def index
    @fantasy_teams = FantasyTeam.all
  end
  
  def show
    # If a fantasy_team id is offered use that, otherwise use the
    # current_user's fantasy_team in the current_league.
    fantasy_team_id = params[:id] ? params[:id] : @current_fantasy_team.id
    @fantasy_team = FantasyTeam.find(fantasy_team_id, :include => {:players => [:nhl_team, :positions]})
  end
  
  def new
    @fantasy_team = FantasyTeam.new
  end
  
  def create
    @fantasy_team = FantasyTeam.new(params[:fantasy_team])
    if @fantasy_team.save
      flash[:notice] = "Successfully created fantasy team."
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
      flash[:notice] = "Successfully updated fantasy team."
      redirect_to @fantasy_team
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @fantasy_team = FantasyTeam.find(params[:id])
    @fantasy_team.destroy
    flash[:notice] = "Successfully destroyed fantasy team."
    redirect_to fantasy_teams_url
  end
end
