class FantsayTeamsController < ApplicationController
  def index
    @fantsay_teams = FantsayTeam.all
  end
  
  def show
    @fantsay_team = FantsayTeam.find(params[:id])
  end
  
  def new
    @fantsay_team = FantsayTeam.new
  end
  
  def create
    @fantsay_team = FantsayTeam.new(params[:fantsay_team])
    if @fantsay_team.save
      flash[:notice] = "Successfully created fantsayteam."
      redirect_to @fantsay_team
    else
      render :action => 'new'
    end
  end
  
  def edit
    @fantsay_team = FantsayTeam.find(params[:id])
  end
  
  def update
    @fantsay_team = FantsayTeam.find(params[:id])
    if @fantsay_team.update_attributes(params[:fantsay_team])
      flash[:notice] = "Successfully updated fantsayteam."
      redirect_to @fantsay_team
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @fantsay_team = FantsayTeam.find(params[:id])
    @fantsay_team.destroy
    flash[:notice] = "Successfully destroyed fantsayteam."
    redirect_to fantsay_teams_url
  end
end
