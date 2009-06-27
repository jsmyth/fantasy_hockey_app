class Player < ActiveRecord::Base
  validates_presence_of :first_name, :last_name
  
  belongs_to :nhl_team
  
  has_many :stats
  has_many :games, :through => :stats
  has_many :roster_assignments
  has_many :fantasy_teams, :through => :roster_assignments
  has_many :starts
  has_many :position_assignments
  has_many :positions, :through => :position_assignments
  has_many :moves
  
  named_scope :skaters,
              :include => :positions, 
              :conditions => [ 'positions.name = ? OR positions.name = ? OR positions.name = ? OR positions.name = ? OR positions.name = ? OR positions.name = ? OR positions.name = ?', 'Center', 'Wing', 'Forward', 'Skater', 'Left Wing', 'Right Wing', 'Defense' ]
  
  named_scope :goalies,
              :include => :positions, 
              :conditions => { 'positions.name' => 'Goalie' }
  
  def name
    "#{first_name} #{last_name}"
  end
end
