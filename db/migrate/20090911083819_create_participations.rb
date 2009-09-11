class CreateParticipations < ActiveRecord::Migration
  def self.up
    create_table :participations do |t|
      t.integer :fantasy_season_id
      t.integer :fantasy_team_id

      t.timestamps
    end
  end

  def self.down
    drop_table :participations
  end
end
