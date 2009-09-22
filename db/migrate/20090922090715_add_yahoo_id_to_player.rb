class AddYahooIdToPlayer < ActiveRecord::Migration
  def self.up
    add_column :players, :yahoo_id, :integer
  end

  def self.down
    remove_column :players, :yahoo_id
  end
end
