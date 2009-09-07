ActionController::Routing::Routes.draw do |map|
  map.login  "login",  :controller => "user_sessions", :action => "new"
  map.logout "logout", :controller => "user_sessions", :action => "destroy"
  
  map.resources :fantasy_teams
  map.resources :players
  map.resources :leagues
  map.resources :roster_assignments
  map.resources :stats
  map.resources :games
  map.resources :users
  map.resource  :user_session

  map.root :controller => 'leagues', :action => 'index'
end
