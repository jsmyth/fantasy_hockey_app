class LeaguesController < ApplicationController
  def index
    @leagues = League.all
  end
  
  def show
    @league = League.find(params[:id])
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
