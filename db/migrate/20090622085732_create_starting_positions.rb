class CreateStartingPositions < ActiveRecord::Migration
  def self.up
    create_table :starting_positions do |t|
      t.integer :league_id
      t.integer :position_id

      t.timestamps
    end
  end

  def self.down
    drop_table :starting_positions
  end
end
