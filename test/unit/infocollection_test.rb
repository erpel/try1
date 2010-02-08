require 'test_helper'

class InfocollectionTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Infocollection.new.valid?
  end
end
