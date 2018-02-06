require "test_helper"
require "minitest/stub/const"

class TimeHttpResponseTest < Minitest::Test
  def test_benchmark_and_http_are_used_to_time_responses
    # Create a mock HTTP get that has a call method with no implementation
    http_get_mock = Minitest::Mock.new
    def http_get_mock.call; end

    # Create a mock BenchmarkTms object to be returned from Benchmark#measure
    benchmark_timing_mock = Minitest::Mock.new
    benchmark_timing_mock.expect(:real, 1.23)

    # Create a mock Benchmark to return a mock BenchmarkTms objet
    benchmark_mock = Minitest::Mock.new
    benchmark_mock.expect(:measure, benchmark_timing_mock)

    # Stub Benchmark with our mock
    Object.stub_const :Benchmark, benchmark_mock do

      # Assert we get the expected value back from Benchmark#measure
      assert_equal(
        1.23,
        SCC::TimeHttpResponse.new(
          url: 'https://google.com',
          http_get: http_get_mock
        ).call
      )
    end

    # Assert our mock expectations were satisifed
    assert_mock benchmark_timing_mock
    assert_mock benchmark_mock
  end
end
