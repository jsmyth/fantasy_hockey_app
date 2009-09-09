class AddNhlSeasonIdToGames < ActiveRecord::Migration
  def self.up
    add_column :games, :nhl_season_id, :integer
  end

  def self.down
    remove_column :games, :nhl_season_id
  end
end
