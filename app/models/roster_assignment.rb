class RosterAssignment < ActiveRecord::Base
  belongs_to :player
  belongs_to :fantasy_team
end
