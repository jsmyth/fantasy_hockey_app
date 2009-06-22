class CreateStats < ActiveRecord::Migration
  def self.up
    create_table :stats do |t|
      t.integer :game_id
      t.integer :player_id
      t.integer :games_played
      t.integer :goals
      t.integer :assists
      t.integer :points
      t.integer :hat_tricks
      t.integer :plus_minus
      t.integer :shots
      t.integer :penalties
      t.integer :penalty_minutes
      t.integer :powerplay_goals
      t.integer :powerplay_assists
      t.integer :powerplay_points
      t.integer :shorthanded_goals
      t.integer :shorthanded_assists
      t.integer :shorthanded_points
      t.integer :game_winning_goals
      t.integer :game_tying_goals
      t.integer :hits
      t.integer :faceoffs
      t.integer :faceoff_wins
      t.integer :faceoff_losses
      t.integer :shootout_attempts
      t.integer :shootout_misses
      t.integer :shootout_goals
      t.integer :wins
      t.integer :losses
      t.integer :overtime_wins
      t.integer :overtime_losses
      t.integer :shootout_wins
      t.integer :shootout_losses
      t.integer :goals_against
      t.integer :shots_against
      t.integer :saves
      t.integer :shutouts
      t.integer :games_started
      t.integer :credit_for_game
      t.integer :shootout_defences
      t.integer :shootout_saves
      t.integer :minutes_played
      t.float :shot_percentage
      t.float :faceoff_percentage
      t.float :shootout_goal_percentage
      t.float :goals_against_average
      t.float :save_percentage
      t.float :shootout_save_percentage
      t.float :shootout_goals_against
      t.timestamps
    end
  end
  
  def self.down
    drop_table :stats
  end
end
