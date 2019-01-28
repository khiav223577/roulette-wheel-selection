require 'test_helper'

class RouletteWheelSelectionTest < Minitest::Test
  def setup
    srand(1234567)
  end

  def test_hash_parameter
    assert_equal 'b', RouletteWheelSelection.sample('a' => 10, 'b' => 20, 'c' => 30)
  end

  def test_sample_by_instance
    assert_equal 'b', RouletteWheelSelection.new('a' => 10, 'b' => 20, 'c' => 30).sample
  end

  def test_input_hash_is_empty
    assert_nil RouletteWheelSelection.sample({})
  end

  def test_hash_parameter_with_all_zero_weights
    assert_nil RouletteWheelSelection.sample('a' => 0, 'b' => 0, 'c' => 0)
  end

  def test_hash_parameter_with_some_zero_weights
    assert_equal 'b', RouletteWheelSelection.sample('a' => 0, 'b' => 1, 'c' => 0)
  end

  def test_array_parameter
    objects = [
      {name: 'a', weight: 10},
      {name: 'b', weight: 20},
      {name: 'c', weight: 30},
    ]
    assert_equal objects[1], RouletteWheelSelection.sample(objects, :weight)
  end

  def test_input_array_is_empty
    assert_nil RouletteWheelSelection.sample([], :weight)
  end

  def test_array_parameter_with_all_zero_weights
    objects = [
      {name: 'a', weight: 0},
      {name: 'b', weight: 0},
    ]
    assert_nil RouletteWheelSelection.sample(objects, :weight)
  end

  def test_array_parameter_with_some_zero_weights
    objects = [
      {name: 'a', weight: 0},
      {name: 'b', weight: 0},
      {name: 'c', weight: 1},
    ]
    assert_equal objects[2], RouletteWheelSelection.sample(objects, :weight)
  end

  def test_string_parameter
    assert_raises RuntimeError do
      RouletteWheelSelection.sample('This is string')
    end
  end
end
