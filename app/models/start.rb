class Start < ActiveRecord::Base
  belongs_to :game
  belongs_to :fantasy_team
  belongs_to :player
end
