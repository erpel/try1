require 'test_helper'

class DataCenterAddressTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert DataCenterAddress.new.valid?
  end
end
