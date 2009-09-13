class AddKeepersToFantasySeason < ActiveRecord::Migration
  def self.up
    add_column :fantasy_seasons, :max_nhl_keepers, :integer
    add_column :fantasy_seasons, :max_minor_keepers, :integer
  end

  def self.down
    remove_column :fantasy_seasons, :max_minor_keepers
    remove_column :fantasy_seasons, :max_nhl_keepers
  end
end
