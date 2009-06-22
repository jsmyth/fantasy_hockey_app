require 'test_helper'

class LeagueTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert League.new.valid?
  end
end
