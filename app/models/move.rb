class Move < ActiveRecord::Base
  belongs_to :player
  belongs_to :operation
  
  has_many :fantasy_teams
end
