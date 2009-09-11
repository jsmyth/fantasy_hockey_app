class RemoveTradeDeadlineFromLeagues < ActiveRecord::Migration
  def self.up
    remove_column :leagues, :trade_deadline
  end

  def self.down
    add_column :leagues, :trade_deadline, :integer
  end
end
