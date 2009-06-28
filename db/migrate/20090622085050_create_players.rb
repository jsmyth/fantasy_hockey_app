class CreatePlayers < ActiveRecord::Migration
  def self.up
    create_table :players do |t|
      t.integer :nhl_team_id      
      t.integer :beacon_id
      t.string :first_name
      t.string :last_name
      t.string :nhl_team_abbreviation
      t.timestamps
    end
  end
  
  def self.down
    drop_table :players
  end
end
