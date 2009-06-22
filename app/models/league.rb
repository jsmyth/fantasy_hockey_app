class League < ActiveRecord::Base
  has_and_belongs_to_many :stat_categories
  
  has_many :fantsay_teams
  has_many :role_assignments
  has_many :roles, :through => :role_assignments
  has_many :users, :through => :role_assignments
  has_many :starting_positions
  has_many :positions, :through => :starting_positions
end
