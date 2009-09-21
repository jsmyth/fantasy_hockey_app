class AddStateToFantasySeason < ActiveRecord::Migration
  def self.up
    add_column :fantasy_seasons, :state, :string
  end

  def self.down
    remove_column :fantasy_seasons, :state
  end
end
