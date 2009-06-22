class CreateStarts < ActiveRecord::Migration
  def self.up
    create_table :starts do |t|
      t.integer :fantasy_team_id
      t.integer :player_id
      t.integer :game_id

      t.timestamps
    end
  end

  def self.down
    drop_table :starts
  end
end
