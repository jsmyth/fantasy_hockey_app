class CreateLeagueStatCategories < ActiveRecord::Migration
  def self.up
    create_table :league_stat_categories do |t|
      t.integer :stat_category_id
      t.integer :league_id

      t.timestamps
    end
  end

  def self.down
    drop_table :league_stat_categories
  end
end
