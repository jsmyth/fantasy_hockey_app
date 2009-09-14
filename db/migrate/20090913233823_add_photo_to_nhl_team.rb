class AddPhotoToNhlTeam < ActiveRecord::Migration
  def self.up
    add_column :nhl_teams, :photo_file_name, :string
    add_column :nhl_teams, :photo_content_type, :string
    add_column :nhl_teams, :photo_file_size, :integer
  end

  def self.down
    remove_column :nhl_teams, :photo_file_size
    remove_column :nhl_teams, :photo_content_type
    remove_column :nhl_teams, :photo_file_name
  end
end
