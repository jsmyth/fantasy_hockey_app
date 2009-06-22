class ApplicationController < ActionController::Base
  include NinjaHideout::ControllerMixin
  
  layout "application"
  helper :all
  protect_from_forgery
  
end
