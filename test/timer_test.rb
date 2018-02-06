require "test_helper"

class TimerTest < Minitest::Test
  def test_timer_invokes_block_the_correct_number_of_times
    counter = 0
    SCC::Timer.new(interval: 3, duration: 6).call { counter += 1 }
    assert_equal(2, counter)
  end
end
