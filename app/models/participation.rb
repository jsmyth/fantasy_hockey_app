class Participation < ActiveRecord::Base
  belongs_to :fantasy_season
  belongs_to :fantasy_team
end
