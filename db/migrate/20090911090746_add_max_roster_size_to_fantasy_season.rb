class AddMaxRosterSizeToFantasySeason < ActiveRecord::Migration
  def self.up
    add_column :fantasy_seasons, :max_roster_size, :integer
  end

  def self.down
    remove_column :fantasy_seasons, :max_roster_size
  end
end
