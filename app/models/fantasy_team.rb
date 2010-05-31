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
  has_many :moves
  
  has_attached_file :photo,
    :default_url => "players/missing.jpg",
    :styles => {
      :thumb => "30x30#",
      :small  => "40x40#" }
  
  def minor_leaguers
    self.roster_assignments.find(:all, :conditions => {:minor_league => true}).collect {|ra| ra.player}
  end
  
  def nhl_players
    self.roster_assignments.find(:all, :conditions => {:minor_league => nil}).collect {|ra| ra.player}
  end
  
  def nhl_skaters
    nhl_players - nhl_goalies
  end
  
  def nhl_goalies
    self.players.goalies.find(:all, :conditions => ['roster_assignments.minor_league IS NULL'])
  end
  
  def number_of_draft_picks_needed(fantasy_season)
    max_roster_size = fantasy_season.max_nhl_roster_size + fantasy_season.max_minor_roster_size
    
    keepers = roster_assignments.find_all_by_keeper(true)
    number_of_keepers = keepers ? keepers.count : 0
    
    max_roster_size - number_of_keepers
  end
end