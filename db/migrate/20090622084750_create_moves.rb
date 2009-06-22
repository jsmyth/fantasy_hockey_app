class CreateMoves < ActiveRecord::Migration
  def self.up
    create_table :moves do |t|
      t.integer :fantasy_team_id
      t.integer :player_id
      t.timestamps
    end
  end
  
  def self.down
    drop_table :moves
  end
end
