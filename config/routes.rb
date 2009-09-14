ActionController::Routing::Routes.draw do |map|
  map.login  "login",  :controller => "user_sessions", :action => "new"
  map.logout "logout", :controller => "user_sessions", :action => "destroy"
  
  map.resources :fantasy_teams
  map.resources :players
  map.resources :leagues
  map.resources :fantasy_seasons,
                :member => {
                             :draft         => :get,
                             :draft_results => :get,
                             :draft_order   => :get,
                             :sort_fantasy_teams   => :post,
                             :select_player => :put
                           }  
  map.resources :roster_assignments
  map.resources :stats
  map.resources :games
  map.resources :users
  map.resource  :user_session

  map.root :controller => 'fantasy_teams', :action => 'show', :id => @current_fantasy_team
end
