class NhlTeam < ActiveRecord::Base
  has_many :home_games, :class_name => 'Game', :foreign_key => 'home_team_id'
  has_many :home_games, :class_name => 'Game', :foreign_key => 'home_team_id'
  
  has_many :players
end
