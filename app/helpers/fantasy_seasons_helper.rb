module FantasySeasonsHelper
  def display_actions(fantasy_season)
    destroy_action = link_to "remove", fantasy_season, :confirm => 'Are you sure?', :method => :delete
    edit_action    = link_to "edit", edit_fantasy_season_path(fantasy_season)
    "#{edit_action} | #{destroy_action}"
  end
  
  def display_matchup(home,away)
    home_link = link_to home.name, home
    away_link = link_to away.name, away
    "#{home_link} vs #{away_link}"
  end
end