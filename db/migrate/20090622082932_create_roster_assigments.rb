class CreateRosterAssigments < ActiveRecord::Migration
  def self.up
    create_table :roster_assigments do |t|
      t.integer :fanatsy_team_id
      t.integer :player_id
      t.boolean :injured_reserve
      t.boolean :minor_league
      t.timestamps
    end
  end
  
  def self.down
    drop_table :roster_assigments
  end
end
