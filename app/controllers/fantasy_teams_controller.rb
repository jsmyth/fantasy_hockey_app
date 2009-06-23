class FantasyTeamsController < ApplicationController
  def index
    @fantasy_teams = fantasyTeam.all
  end
  
  def show
    @fantasy_team = fantasyTeam.find(params[:id])
  end
  
  def new
    @fantasy_team = fantasyTeam.new
  end
  
  def create
    @fantasy_team = fantasyTeam.new(params[:fantasy_team])
    if @fantasy_team.save
      flash[:notice] = "Successfully created fantasyteam."
      redirect_to @fantasy_team
    else
      render :action => 'new'
    end
  end
  
  def edit
    @fantasy_team = fantasyTeam.find(params[:id])
  end
  
  def update
    @fantasy_team = fantasyTeam.find(params[:id])
    if @fantasy_team.update_attributes(params[:fantasy_team])
      flash[:notice] = "Successfully updated fantasyteam."
      redirect_to @fantasy_team
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @fantasy_team = fantasyTeam.find(params[:id])
    @fantasy_team.destroy
    flash[:notice] = "Successfully destroyed fantasyteam."
    redirect_to fantasy_teams_url
  end
end
