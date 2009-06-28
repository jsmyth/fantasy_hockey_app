class UserSessionsController < ApplicationController
  before_filter :require_user, :only => :destroy
  
  def new
    page_is "Log in to your account"
    @user_session = UserSession.new
  end
  
  def create
    page_is "Log in to your account"
    @user_session = UserSession.new(params[:user_session])
    if @user_session.save
      redirect_to '/'
    else
      render :action => :new
    end
  end
  
  def destroy
    current_user_session.destroy unless current_user_session.blank?
    redirect_to '/'
  end
  
end
