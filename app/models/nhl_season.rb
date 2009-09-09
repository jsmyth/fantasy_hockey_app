class NhlSeason < ActiveRecord::Base
  has_many :games
  has_many :fantasy_seasons
end
