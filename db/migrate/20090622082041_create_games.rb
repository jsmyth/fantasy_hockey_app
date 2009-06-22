class CreateGames < ActiveRecord::Migration
  def self.up
    create_table :games do |t|
      t.datetime :starts_at
      t.integer :home_team_id,
                :away_team_id
      t.timestamps
    end
  end
  
  def self.down
    drop_table :games
  end
end
