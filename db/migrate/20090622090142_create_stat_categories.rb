class CreateStatCategories < ActiveRecord::Migration
  def self.up
    create_table :stat_categories do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :stat_categories
  end
end
