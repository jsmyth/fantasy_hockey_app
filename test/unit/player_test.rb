require 'test_helper'

class PlayerTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Player.new.valid?
  end
end
