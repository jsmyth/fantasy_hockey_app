class UsersController < ApplicationController
  
  # Auth
  before_filter :disallow_authentication, :only => [:new, :create]
  before_filter :require_authentication,  :only => [:edit, :update, :destroy]
  
  # Actual preparation
  before_filter :prepare_user, :except => [:new, :create, :index, :show, :dashboard]
  permissions   :edit,    :user, :only => [:edit, :update]
  permissions   :destroy, :user, :only => [:destroy]
  
  def new
    page_is "Create an Account"
    @user = User.new(params[:user])
  end
  
  def edit
    page_is "Update your account"
  end
  
  def create
    page_is "Create an Account"
    @user = User.new(params[:user])
    if @user.save
      redirect_to user_path(@user)
    else
      render :action => :new
    end
  end
  
  def update
    page_is "Update your account"
    if @user.update_attributes(params[:user])
      redirect_to user_path(@user)
    else
      render :action => :update
    end
  end
  
  def destroy
    @user.destroy
    redirect_to :back
  end

  private
  
  def prepare_user
    @user = User.from_slug(params[:id])
  end
  
end
