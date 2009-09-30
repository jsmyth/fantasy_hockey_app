class FantasySeason < ActiveRecord::Base
  include AASM
  
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
  aasm_column :state
  aasm_initial_state :pre_season
  aasm_state :pre_season
  aasm_state :draft_snapped
  aasm_state :draft_frozen
  aasm_state :regular_season
  aasm_state :post_season
  aasm_state :off_season
  
  # State Machine Events

  aasm_event :snap_draft do
    transitions :from => :pre_season, :to => :draft_snapped
  end
  
  aasm_event :freeze_draft do
    transitions :from => :draft_snapped, :to => :draft_frozen
  end
  
  aasm_event :start_season do
    transitions :from => :draft_frozen, :to => :regular_season
  end
  
  aasm_event :start_post_season do
    transitions :from => :regular_season, :to => :post_season
  end
  
  aasm_event :start_off_season do
    transitions :from => :post_season, :to => :off_season
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

  def owner_of_player(player)
    owned_by = fantasy_teams.find(:all,
      :include    => :players,
      :conditions => ["players.id = ?", player.id]
    ).first.name rescue nil

    owned_by ||= 'FA'
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
