class AddKeeperToRosterAssignment < ActiveRecord::Migration
  def self.up
    add_column :roster_assignments, :keeper, :boolean
  end

  def self.down
    remove_column :roster_assignments, :keeper
  end
end
