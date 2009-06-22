class Player < ActiveRecord::Base
  validates_presence_of :first_name, :last_name
  
  belongs_to :nhl_team
  
  has_many :stats
  has_many :roster_assignments
  has_many :fantasy_teams, :through => :roster_assignments
  has_many :starts
  has_many :position_assignments
  has_many :positions, :through => :position_assignments
  has_many :moves
end
