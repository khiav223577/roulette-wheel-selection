require 'test_helper'

class RouletteWheelSelectionTest < Minitest::Test
  def setup
    srand(1234567)
  end

  def test_hash_parameter
    assert_equal 'b', RouletteWheelSelection.sample('a' => 10, 'b' => 20, 'c' => 30)
  end
end
