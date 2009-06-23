class FantsayTeam < ActiveRecord::Base
  belongs_to :user
  belongs_to :league
  
  has_many :moves
  has_many :starts
  has_many :roster_assignments
  has_many :players, :through => :roster_assignments
end
