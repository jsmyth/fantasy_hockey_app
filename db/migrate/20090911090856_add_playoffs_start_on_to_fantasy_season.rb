class AddPlayoffsStartOnToFantasySeason < ActiveRecord::Migration
  def self.up
    add_column :fantasy_seasons, :playoffs_start_on, :date
  end

  def self.down
    remove_column :fantasy_seasons, :playoffs_start_on
  end
end
