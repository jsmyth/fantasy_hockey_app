class AddTradeDeadlineToFantasySeason < ActiveRecord::Migration
  def self.up
    add_column :fantasy_seasons, :trade_deadline, :date
  end

  def self.down
    remove_column :fantasy_seasons, :trade_deadline
  end
end
