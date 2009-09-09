require 'test_helper'

class FantasySeasonTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert FantasySeason.new.valid?
  end
end
