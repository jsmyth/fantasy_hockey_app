class AddPhotoToFantasyTeam < ActiveRecord::Migration
  def self.up
    add_column :fantasy_teams, :photo_file_name, :string
    add_column :fantasy_teams, :photo_content_type, :string
    add_column :fantasy_teams, :photo_file_size, :integer
  end

  def self.down
    remove_column :fantasy_teams, :photo_file_size
    remove_column :fantasy_teams, :photo_content_type
    remove_column :fantasy_teams, :photo_file_name
  end
end
