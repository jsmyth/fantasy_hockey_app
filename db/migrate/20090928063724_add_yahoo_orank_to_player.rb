class AddYahooOrankToPlayer < ActiveRecord::Migration
  def self.up
    add_column :players, :yahoo_orank, :integer, :default => 99999
  end

  def self.down
    remove_column :players, :yahoo_orank
  end
end
