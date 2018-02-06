require "test_helper"

class TimeHttpResponseTest < Minitest::Test
  def test_call_returns_a_float
    assert_equal(
      Float,
      SCC::TimeHttpResponse.new(url: 'https://google.com').call.class
    )
  end
end
