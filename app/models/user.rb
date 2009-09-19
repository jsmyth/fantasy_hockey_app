class User < ActiveRecord::Base
  include SimpleSlugs
  self.slug_source = :display_name
  
  acts_as_authentic
  
  validates_presence_of :display_name, :on => :create, :message => "can't be blank"
  
  has_many :fantasy_teams
  has_many :role_assignments
  has_many :roles, :through => :role_assignments
  has_many :fantasy_seasons, :through => :role_assignments

  def name
    display_name
  end
  
  def self.[](login)
    first(:conditions => ["LOWER(users.login) = ?", login.downcase])
  end
  
  def can(action, object)
    object.respond_to?(:"can_#{action}?") && object.send(:"can_#{action}?", self)
  end
  
  def can_edit?(other)
    self == other
  end
  
  def can_destroy?(other)
    self == other
  end
  
end
