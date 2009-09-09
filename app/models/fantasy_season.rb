class FantasySeason < ActiveRecord::Base
  belongs_to :nhl_season
  belongs_to :league
  
  has_many :draft_picks
end
