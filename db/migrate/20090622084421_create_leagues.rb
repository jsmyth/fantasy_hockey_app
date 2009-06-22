class CreateLeagues < ActiveRecord::Migration
  def self.up
    create_table :leagues do |t|
      t.string :name
      t.integer :max_roster_size
      t.date :trade_deadline
      t.date :playoffs_start_on
      t.timestamps
    end
  end
  
  def self.down
    drop_table :leagues
  end
end
