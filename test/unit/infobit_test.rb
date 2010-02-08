require 'test_helper'

class InfobitTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Infobit.new.valid?
  end
end
