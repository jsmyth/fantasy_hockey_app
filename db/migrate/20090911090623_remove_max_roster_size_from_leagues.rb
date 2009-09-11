class RemoveMaxRosterSizeFromLeagues < ActiveRecord::Migration
  def self.up
    remove_column :leagues, :max_roster_size
  end

  def self.down
    add_column :leagues, :max_roster_size, :integer
  end
end
