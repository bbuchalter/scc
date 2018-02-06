require "test_helper"

class CollectResponsesTest < Minitest::Test
  def test_call_returns_an_array
    assert_equal(
      SCC::CollectResponses.new(url: 'https://google.com').call.class,
      Array
    )
  end
end
