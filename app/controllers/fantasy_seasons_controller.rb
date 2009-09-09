class FantasySeasonsController < ApplicationController
  def index
    @fantasy_seasons = FantasySeason.all
  end
  
  def show
    @fantasy_season = FantasySeason.find(params[:id])
  end
  
  def new
    @fantasy_season = FantasySeason.new
  end
  
  def create
    @fantasy_season = FantasySeason.new(params[:fantasy_season])
    if @fantasy_season.save
      flash[:notice] = "Successfully created fantasyseason."
      redirect_to @fantasy_season
    else
      render :action => 'new'
    end
  end
  
  def edit
    @fantasy_season = FantasySeason.find(params[:id])
  end
  
  def update
    @fantasy_season = FantasySeason.find(params[:id])
    if @fantasy_season.update_attributes(params[:fantasy_season])
      flash[:notice] = "Successfully updated fantasyseason."
      redirect_to @fantasy_season
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @fantasy_season = FantasySeason.find(params[:id])
    @fantasy_season.destroy
    flash[:notice] = "Successfully destroyed fantasyseason."
    redirect_to fantasy_seasons_url
  end
end
