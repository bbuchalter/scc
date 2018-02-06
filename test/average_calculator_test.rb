require "test_helper"

class AverageCalculatorTest < Minitest::Test
  def test_math
    assert_equal(
      0.2,
      SCC::AverageCalculator.new(
        numbers: [0.1, 0.1, 0.1, 0.5]
      ).call
    )
  end

  def test_when_called_with_no_numbers
    assert_raises ArgumentError do
      SCC::AverageCalculator.new(numbers: [])
    end
  end
end
