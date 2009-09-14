class AddPositionToParticipation < ActiveRecord::Migration
  def self.up
    add_column :participations, :position, :integer
  end

  def self.down
    remove_column :participations, :position
  end
end
