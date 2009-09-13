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
  
  def player_row(p)
    positions = p.positions.collect{|pos| pos.abbreviation}.join('/')
    name = p.name
    nhl_team = p.nhl_team.abbreviation
    draft_link = link_to("DRAFT", {:controller => 'roster_assignments', :action => 'create', :id => p.id, :draft_player => true}, :confirm => "Really? Are you serious? One last chance to redeem yourself (push cancel)", :method => :post)
    
    "|#{draft_link}| #{positions} #{name} #{nhl_team}"
  end
end