class Participation < ActiveRecord::Base
  belongs_to :fantasy_season
  belongs_to :fantasy_team

  acts_as_list :scope => :fantasy_season
  default_scope :order => :position
end
