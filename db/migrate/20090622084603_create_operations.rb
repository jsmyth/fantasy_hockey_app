class CreateOperations < ActiveRecord::Migration
  def self.up
    create_table :operations do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :operations
  end
end
