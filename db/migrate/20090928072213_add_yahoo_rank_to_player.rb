class AddYahooRankToPlayer < ActiveRecord::Migration
  def self.up
    add_column :players, :yahoo_rank, :integer, :default => 99999
  end

  def self.down
    remove_column :players, :yahoo_rank
  end
end
