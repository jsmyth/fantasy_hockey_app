class RemoveLeagueIdFromFantasyTeam < ActiveRecord::Migration
  def self.up
    remove_column :fantasy_teams, :league_id
  end

  def self.down
    add_column :fantasy_teams, :league_id, :integer
  end
end
