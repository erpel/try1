require 'test_helper'

class EMailTextTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert EMailText.new.valid?
  end
end
