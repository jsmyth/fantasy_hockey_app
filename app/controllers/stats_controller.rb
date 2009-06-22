class StatsController < ApplicationController
  def index
    @stats = Stat.all
  end
  
  def show
    @stat = Stat.find(params[:id])
  end
  
  def new
    @stat = Stat.new
  end
  
  def create
    @stat = Stat.new(params[:stat])
    if @stat.save
      flash[:notice] = "Successfully created stat."
      redirect_to @stat
    else
      render :action => 'new'
    end
  end
  
  def edit
    @stat = Stat.find(params[:id])
  end
  
  def update
    @stat = Stat.find(params[:id])
    if @stat.update_attributes(params[:stat])
      flash[:notice] = "Successfully updated stat."
      redirect_to @stat
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @stat = Stat.find(params[:id])
    @stat.destroy
    flash[:notice] = "Successfully destroyed stat."
    redirect_to stats_url
  end
end
