class CreateRosterAssignments < ActiveRecord::Migration
  def self.up
    create_table :roster_assignments do |t|
      t.integer :fantasy_team_id
      t.integer :player_id
      t.boolean :injured_reserve
      t.boolean :minor_league
      t.timestamps
    end
  end
  
  def self.down
    drop_table :roster_assignments
  end
end
