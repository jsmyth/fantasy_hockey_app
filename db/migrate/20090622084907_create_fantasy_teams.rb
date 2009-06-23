class CreateFantasyTeams < ActiveRecord::Migration
  def self.up
    create_table :fantasy_teams do |t|
      t.string :name
      t.integer :league_id
      t.integer :user_id
      t.timestamps
    end
  end
  
  def self.down
    drop_table :fantasy_teams
  end
end
