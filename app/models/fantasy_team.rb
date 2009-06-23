class FantasyTeam < ActiveRecord::Base
  belongs_to :user
  belongs_to :league
  
  has_many :roster_assignments
  has_many :players, :through => :roster_assignments
  has_many :starts
end
