class RosterAssigmentsController < ApplicationController
  def index
    @roster_assigments = RosterAssigment.all
  end
  
  def show
    @roster_assigment = RosterAssigment.find(params[:id])
  end
  
  def new
    @roster_assigment = RosterAssigment.new
  end
  
  def create
    @roster_assigment = RosterAssigment.new(params[:roster_assigment])
    if @roster_assigment.save
      flash[:notice] = "Successfully created rosterassigment."
      redirect_to @roster_assigment
    else
      render :action => 'new'
    end
  end
  
  def edit
    @roster_assigment = RosterAssigment.find(params[:id])
  end
  
  def update
    @roster_assigment = RosterAssigment.find(params[:id])
    if @roster_assigment.update_attributes(params[:roster_assigment])
      flash[:notice] = "Successfully updated rosterassigment."
      redirect_to @roster_assigment
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @roster_assigment = RosterAssigment.find(params[:id])
    @roster_assigment.destroy
    flash[:notice] = "Successfully destroyed rosterassigment."
    redirect_to roster_assigments_url
  end
end
