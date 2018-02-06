require "test_helper"
require "minitest/stub/const"

class StopwatchTest < Minitest::Test
  def test_benchmark_is_used_to_time_execution
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
        SCC::Stopwatch.call { nil }
      )
    end

    # Assert our mock expectations were satisifed
    assert_mock benchmark_timing_mock
    assert_mock benchmark_mock
  end
end
