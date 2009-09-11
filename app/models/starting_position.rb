class StartingPosition < ActiveRecord::Base
  belongs_to :fantasy_team
  belongs_to :position
end
