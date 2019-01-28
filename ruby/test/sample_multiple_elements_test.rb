require 'test_helper'

class SampleMultipleElements < Minitest::Test
  def setup
    srand(1234567)
  end

  def test_sample_1_elements
    assert_equal 'b', RouletteWheelSelection.new('a' => 10, 'b' => 20, 'c' => 30).sample
  end

  def test_sample_1_elements_with_specified_number
    assert_equal ['b'], RouletteWheelSelection.new('a' => 10, 'b' => 20, 'c' => 30).sample(1)
  end

  def test_sample_2_elements
    assert_equal ['b', 'c'], RouletteWheelSelection.new('a' => 10, 'b' => 20, 'c' => 30).sample(2)
  end

  def test_sample_5_elements
    assert_equal ['b', 'c', 'a', 'a', 'c'], RouletteWheelSelection.new('a' => 10, 'b' => 20, 'c' => 30).sample(5)
  end

  def test_sample_2_elements_on_low_total_rate
    assert_equal ['c', 'a'], RouletteWheelSelection.new('a' => 2, 'b' => 1, 'c' => 1).sample(2)
  end

  def test_sample_15_elements_on_low_total_rate
    assert_equal ['c', 'a', 'a', 'b'], RouletteWheelSelection.new('a' => 2, 'b' => 1, 'c' => 1).sample(15)
  end
end
