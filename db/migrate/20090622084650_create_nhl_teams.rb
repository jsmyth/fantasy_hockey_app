class CreateNhlTeams < ActiveRecord::Migration
  def self.up
    create_table :nhl_teams do |t|
      t.string :name
      t.string :city
      t.string :abbreviation
      t.integer :beacon_id

      t.timestamps
    end
  end

  def self.down
    drop_table :nhl_teams
  end
end
