class RenameLeagueIdToFantasySeasonIdInStartingPositions < ActiveRecord::Migration
  def self.up
    remove_column :starting_positions, :league_id
    add_column    :starting_positions, :fantasy_season_id, :integer
  end

  def self.down
    remove_column :starting_positions, :fantasy_season_id
    add_column    :starting_positions, :league_id, :integer
  end
end
