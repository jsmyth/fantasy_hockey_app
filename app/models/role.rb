class Role < ActiveRecord::Base
  has_many :role_assignments
  has_many :fantasy_seasons, :through => :role_assignments
  has_many :users,           :through => :role_assignments
end
