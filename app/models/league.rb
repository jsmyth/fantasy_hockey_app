class League < ActiveRecord::Base
  has_many :fantasy_seasons
  has_many :participations, :through => :fantasy_seasons
end
