class CreateFantasySeasons < ActiveRecord::Migration
  def self.up
    create_table :fantasy_seasons do |t|
      t.integer :nhl_season_id
      t.integer :league_id
      t.timestamps
    end
  end
  
  def self.down
    drop_table :fantasy_seasons
  end
end
