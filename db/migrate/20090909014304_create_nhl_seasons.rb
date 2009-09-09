class CreateNhlSeasons < ActiveRecord::Migration
  def self.up
    create_table :nhl_seasons do |t|
      t.date :begins_on
      t.text :notes

      t.timestamps
    end
  end

  def self.down
    drop_table :nhl_seasons
  end
end
