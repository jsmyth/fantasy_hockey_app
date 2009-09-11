class RemovePlayoffsStartOnFromLeagues < ActiveRecord::Migration
  def self.up
    remove_column :leagues, :playoffs_start_on
  end

  def self.down
    add_column :leagues, :playoffs_start_on, :integer
  end
end
