class Game < ActiveRecord::Base
  belongs_to :home_team, :class_name => 'NhlTeam', :foreign_key => 'home_team_id'
  belongs_to :away_team, :class_name => 'NhlTeam', :foreign_key => 'away_team_id'
  belongs_to :nhl_season
  
  has_many :stats
  has_many :starts
end
