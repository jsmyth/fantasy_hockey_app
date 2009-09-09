class AddNhlSeasonIdToGames < ActiveRecord::Migration
  def self.up
    add_column :games, :season_id, :integer
  end

  def self.down
    remove_column :games, :season_id
  end
end
