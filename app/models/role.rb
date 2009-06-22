class Role < ActiveRecord::Base
  has_many :role_assignments
  has_many :leagues, :through => :role_assignments
  has_many :users,   :through => :role_assignments
end
