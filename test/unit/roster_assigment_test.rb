require 'test_helper'

class RosterAssigmentTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert RosterAssigment.new.valid?
  end
end
