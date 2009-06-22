class Position < ActiveRecord::Base
  has_many :position_assignments
  has_many :players, :through => :position_assignments
end
