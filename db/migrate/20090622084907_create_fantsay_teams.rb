class CreateFantsayTeams < ActiveRecord::Migration
  def self.up
    create_table :fantsay_teams do |t|
      t.string :name
      t.integer :league_id
      t.integer :user_id
      t.timestamps
    end
  end
  
  def self.down
    drop_table :fantsay_teams
  end
end
