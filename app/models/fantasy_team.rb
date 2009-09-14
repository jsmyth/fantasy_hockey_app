class FantasyTeam < ActiveRecord::Base
  belongs_to :user
  has_many :participations
  has_many :fantasy_seasons,
           :through => :participations,
           :order   => "position"
  #acts_as_list :scope => :fantasy_seasons
  
  has_many :draft_picks
  has_many :roster_assignments
  has_many :players, :through => :roster_assignments
  has_many :starts  
  
  def minor_leaguers
    self.roster_assignments.find(:all, :conditions => {:minor_league => 1}).collect {|ra| ra.player}
  end
  
  def nhl_players
    self.roster_assignments.find(:all, :conditions => {:minor_league => nil}).collect {|ra| ra.player}
  end
end
