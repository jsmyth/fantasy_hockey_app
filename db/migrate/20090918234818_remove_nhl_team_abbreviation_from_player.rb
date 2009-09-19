class RemoveNhlTeamAbbreviationFromPlayer < ActiveRecord::Migration
  def self.up
    remove_column :players, :nhl_team_abbreviation
  end

  def self.down
    add_column :players, :nhl_team_abbreviation, :string
  end
end
