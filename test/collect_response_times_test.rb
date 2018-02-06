require "test_helper"

class CollectResponseTimesTest < Minitest::Test
  def test_correct_number_of_results_are_returned_as_floats
    collector = SCC::CollectResponseTimes.new(
      url: 'https://google.com',
      interval: 1,
      duration: 2
    )
    results = collector.call
    assert_equal(2, results.size)
    assert_equal(Float, results.first.class)
    assert_equal(Float, results.last.class)
  end
end
