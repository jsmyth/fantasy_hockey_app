class CreateDraftPicks < ActiveRecord::Migration
  def self.up
    create_table :draft_picks do |t|
      t.integer :fantasy_season_id
      t.integer :player_id
      t.integer :fantasy_team_id
      t.text :notes

      t.timestamps
    end
  end

  def self.down
    drop_table :draft_picks
  end
end
