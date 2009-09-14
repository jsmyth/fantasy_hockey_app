class NhlTeam < ActiveRecord::Base
  has_many :home_games, :class_name => 'Game', :foreign_key => 'home_team_id'
  has_many :away_games, :class_name => 'Game', :foreign_key => 'away_team_id'

  has_many :players

  has_attached_file :photo,
    :styles => {
      :thumb => "20x20#",
      :small  => "120x120>" }
end
