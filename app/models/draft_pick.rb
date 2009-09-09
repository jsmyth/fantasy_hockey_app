class DraftPick < ActiveRecord::Base
  belongs_to :fantasy_team
  belongs_to :player
  belongs_to :fantasy_season
end
