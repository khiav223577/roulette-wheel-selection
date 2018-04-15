require 'test_helper'

class RouletteWheelSelectionTest < Minitest::Test
  def setup
    srand(1234567)
  end

  def test_hash_parameter
    assert_equal 'b', RouletteWheelSelection.sample('a' => 10, 'b' => 20, 'c' => 30)
  end

  def test_array_parameter
    objects = [
      {name: 'a', weight: 10},
      {name: 'b', weight: 20},
      {name: 'c', weight: 30},
    ]
    assert_equal objects[1], RouletteWheelSelection.sample(objects, :weight)
  end

  def test_string_parameter
    assert_raises RuntimeError do 
      RouletteWheelSelection.sample('This is string')
    end
  end
end
