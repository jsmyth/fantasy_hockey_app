class AddQuantityToStartingPosition < ActiveRecord::Migration
  def self.up
    add_column :starting_positions, :quantity, :integer
  end

  def self.down
    remove_column :starting_positions, :quantity
  end
end
