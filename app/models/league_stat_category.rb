class FantasySeasonStatCategory < ActiveRecord::Base
  belongs_to :stat_category
  belongs_to :fantasy_season
end
