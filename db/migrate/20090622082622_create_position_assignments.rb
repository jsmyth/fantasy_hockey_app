class CreatePositionAssignments < ActiveRecord::Migration
  def self.up
    create_table :position_assignments do |t|
      t.integer :position_id
      t.integer :player_id

      t.timestamps
    end
  end

  def self.down
    drop_table :position_assignments
  end
end
