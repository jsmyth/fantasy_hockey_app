class AddPositionToFantasyTeams < ActiveRecord::Migration
  def self.up
    add_column :fantasy_teams, :position, :integer
  end

  def self.down
    remove_column :fantasy_teams, :position
  end
end
