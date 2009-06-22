require 'test_helper'

class FantsayTeamTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert FantsayTeam.new.valid?
  end
end
