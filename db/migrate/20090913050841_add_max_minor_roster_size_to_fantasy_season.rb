class AddMaxMinorRosterSizeToFantasySeason < ActiveRecord::Migration
  def self.up
    add_column :fantasy_seasons, :max_minor_roster_size, :integer
  end

  def self.down
    remove_column :fantasy_seasons, :max_minor_roster_size
  end
end
