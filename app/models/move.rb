class Move < ActiveRecord::Base
  belongs_to :player
  belongs_to :operation
  belongs_to :fantasy_teams
end
