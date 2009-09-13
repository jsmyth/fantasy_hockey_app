class RenameMaxRosterSizeToMaxNhlRosterSizeInFantasySeason < ActiveRecord::Migration
  def self.up
    remove_column :fantasy_seasons, :max_roster_size
    add_column    :fantasy_seasons, :max_nhl_roster_size, :integer
  end

  def self.down
    remove_column :fantasy_seasons, :max_nhl_roster_size
    add_column    :fantasy_seasons, :max_roster_size, :integer
  end
end
