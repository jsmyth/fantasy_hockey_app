class FantasySeason < ActiveRecord::Base
  has_many :role_assignments
  has_many :roles, :through => :role_assignments
  has_many :users, :through => :role_assignments
  
  has_and_belongs_to_many :stat_categories
  
  has_many :participations
  has_many :fantasy_teams,
           :through => :participations,
           :order   => "position"
  
  has_many :draft_picks

  belongs_to :nhl_season
  
  has_many :starting_positions
  has_many :positions, :through => :starting_positions

  belongs_to :league
  
  # State Machine States
  acts_as_state_machine :initial => :pre_season
  state :pre_season
  state :draft_snapped
  state :draft_frozen
  state :regular_season
  state :post_season
  state :off_season
  
  # State Machine Events

  event :snap_draft do
    transitions :from => :pre_season, :to => :draft_snapped
  end
  
  event :freeze_draft do
    transitions :from => :draft_snapped, :to => :draft_frozen
  end
  
  event :start_season do
    transitions :from => :draft_frozen, :to => :regular_season
  end
  
  event :start_post_season do
    transitions :from => :regular_season, :to => :post_season
  end
  
  event :start_off_season do
    transitions :from => :post_season, :to => :off_season
  end
  
  event :start_pre_season do
    transitions :from => :off_season, :to => :pre_season
  end

  def name
    nhl_season.name
  end

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

  def draft_order
    initial_order = fantasy_teams.collect{|ft| ft.id}

    number_of_fantasy_teams = fantasy_teams.count
    keepers_per_team        = max_nhl_keepers       + max_minor_keepers
    max_roster_size         = max_nhl_roster_size   + max_minor_roster_size
    number_of_draft_picks   = max_roster_size       * number_of_fantasy_teams
    number_of_keepers       = keepers_per_team      * number_of_fantasy_teams
    number_of_draft_picks   = number_of_draft_picks - number_of_keepers
    number_of_rounds        = number_of_draft_picks / number_of_fantasy_teams

    random_fantasy_teams = fantasy_teams.sort_by{ rand }
    draft_picks = Array.new
    number_of_rounds.times do |round|
      draft_picks += round.even? ? fantasy_teams : fantasy_teams.reverse
    end

    # Apply trades and such to number_of_draft_picks

    return draft_picks
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
