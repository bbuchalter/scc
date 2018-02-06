module SCC
  # Timer handles the logic of ensuring responses are collected the correct
  # number of times at the correct interval.
  class Timer
    # The exception raised when the call count is zero.
    ZeroCallCountError = Class.new(StandardError)

    # @params interval [Integer] Number of seconds between invokations of `call`
    # @params duration [Integer] Number of seconds `call` should execute, excluding runtime of caller
    def initialize(interval:, duration:)
      @interval = interval
      @duration = duration

      raise ZeroCallCountError if call_count.zero?
    end

    # Call divides the duration by the interval to calculate a "call count" and
    # invokes the block argument that number of times. Note that call count is
    # always rounded down.
    # @params &block [Proc] The code to be invoked at desired interval and for the desired duration
    def call
      SCC::Logger.info "[TIMER] Starting timer for #{duration} seconds, with #{interval} second intervals."
      call_count.times do |n|
        yield

        SCC::Logger.info "[TIMER] Finished #{n+1} of #{call_count} calls."

        if (n+1) != call_count
          SCC::Logger.info "[TIMER] Waiting #{interval} seconds till next call."
          sleep interval
        end
      end
    end

    private

    attr_reader :interval, :duration

    def call_count
      @call_count ||= (duration / interval)
    end
  end
end
