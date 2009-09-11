class FantasySeason < ActiveRecord::Base
  has_many :role_assignments
  has_many :roles, :through => :role_assignments
  has_many :users, :through => :role_assignments
  
  has_and_belongs_to_many :stat_categories
  
  has_many :participations
  has_many :fantasy_teams, :through => :participations
  
  has_many :draft_picks

  belongs_to :nhl_season
  
  has_many :starting_positions
  has_many :positions, :through => :starting_positions

  belongs_to :league


  def assigned_players
    self.fantasy_teams.collect{|f_t| f_t.players}
  end
  
  def matchups
    all_matchups = Array.new
    
    fantasy_teams.count.times do |week_number|
      all_matchups.push matchup_for_week(week_number)
    end
    
    return all_matchups
  end

  private
  
  def matchup_for_week(week_number)
    teams = fantasy_teams.to_a.dup
    week_number.times do
      teams << teams.slice!(1)
    end
    matchups = Array.new
    (teams.count / 2).times do
      matchups << teams.shift
      matchups << teams.pop
    end
    matchups
  end
end
