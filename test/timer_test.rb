require "test_helper"

class TimerTest < Minitest::Test
  def test_timer_invokes_block_the_correct_number_of_times
    counter = 0
    SCC::Timer.new(interval: 1, duration: 2).call { counter += 1 }
    assert_equal(2, counter)
  end

  def test_timer_always_rounds_down_call_counts
    counter = 0
    SCC::Timer.new(interval: 2, duration: 3).call { counter += 1 }
    assert_equal(1, counter)
  end

  def test_timer_honors_interval
    timestamps = []
    SCC::Timer.new(interval: 2, duration: 4).call { timestamps << Time.now.to_i }
    assert_equal(
      2,
      timestamps.last - timestamps.first
    )
  end

  def test_timer_raises_exception_if_call_count_is_zero
    assert_raises SCC::Timer::ZeroCallCountError do
      SCC::Timer.new(interval: 1, duration: 0).call { "nothing" }
    end
  end
end
