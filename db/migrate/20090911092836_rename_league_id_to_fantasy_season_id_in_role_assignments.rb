class RenameLeagueIdToFantasySeasonIdInRoleAssignments < ActiveRecord::Migration
  def self.up
    remove_column :role_assignments, :league_id
    add_column    :role_assignments, :fantasy_season_id, :integer
  end

  def self.down
    remove_column :role_assignments, :fantasy_season_id
    add_column    :role_assignments, :league_id, :integer
  end
end
