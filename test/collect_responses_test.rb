require "test_helper"

class CollectResponsesTest < Minitest::Test
  def test_call_returns_nothing
    assert_nil(
      SCC::CollectResponses.new(url: 'https://google.com').call
    )
  end
end
