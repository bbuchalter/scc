require "test_helper"

class CollectResponsesTest < Minitest::Test
  def test_call_returns_the_given_url
    assert_equal(
      SCC::CollectResponses.new(url: 'https://google.com').call,
      'https://google.com'
    )
  end
end
