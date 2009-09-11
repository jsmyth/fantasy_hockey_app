class StatCategory < ActiveRecord::Base
  has_and_belongs_to_many :fantasy_seasons
end
