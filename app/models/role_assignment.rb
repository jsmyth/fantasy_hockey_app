class RoleAssignment < ActiveRecord::Base
  belongs_to :role
  belongs_to :user
  belongs_to :fantasy_season
end
