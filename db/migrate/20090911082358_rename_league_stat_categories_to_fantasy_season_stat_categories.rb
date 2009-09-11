class RenameLeagueStatCategoriesToFantasySeasonStatCategories < ActiveRecord::Migration
  def self.up
    drop_table :league_stat_categories

    create_table :fantasy_season_stat_categories do |t|
      t.integer :stat_category_id,
                :fantasy_season_id
      t.timestamps
    end
  end

  def self.down
    drop_table  :fantasy_season_stat_categories

    create_table :league_stat_categories do |t|
      t.integer :stat_category_id,
                :league_id
      t.timestamps
    end
  end
end
