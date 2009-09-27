class ApplicationController < ActionController::Base
  include NinjaHideout::ControllerMixin
  
  layout "application"
  helper :all
  protect_from_forgery
  
  before_filter :require_user
  before_filter :set_current_league
  filter_parameter_logging :password

  helper_method :current_user

  private

  def set_current_league
#  @current_league = League.find_by_subdomain!("pchl")
    if current_user
      @current_league = League.find_by_subdomain!(request.subdomains.first)
      @current_fantasy_season = @current_league.fantasy_seasons.last
      @current_state = @current_fantasy_season.state
      @current_fantasy_team = @current_user.fantasy_teams.find(:all, :include => :fantasy_seasons, :conditions => {"fantasy_seasons.id" => @current_fantasy_season.id}).last
    end
  end

  def current_user_session
    return @current_user_session if defined?(@current_user_session)
    @current_user_session = UserSession.find
  end

  def current_user
    return @current_user if defined?(@current_user)
    @current_user = current_user_session && current_user_session.record
  end

  def require_user
    unless current_user
      store_location
      flash[:notice] = "You must be logged in to access this page"
      redirect_to new_user_session_url
      return false
    end
  end
  
  def commissioner?
    current_user.role_assignments.find(:all,
      :conditions => {
        :fantasy_season_id => @current_fantasy_season.id,
        :role_id           => Role.find_by_name('Commissioner')
      }
    )
  end

  def require_no_user
    if current_user
      store_location
      flash[:notice] = "You must be logged out to access this page"
      redirect_to account_url
      return false
    end
  end

  def store_location
    session[:return_to] = request.request_uri
  end

  def redirect_back_or_default(default)
    redirect_to(session[:return_to] || default)
    session[:return_to] = nil
  end
end
