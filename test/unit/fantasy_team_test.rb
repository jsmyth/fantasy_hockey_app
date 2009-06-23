require 'test_helper'

class FantasyTeamTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert FantasyTeam.new.valid?
  end
end
