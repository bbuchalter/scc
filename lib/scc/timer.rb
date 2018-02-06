module SCC
  # Timer handles the logic of ensuring responses are collected the correct
  # number of times at the correct interval.
  class Timer
    def initialize(interval:, duration:)
      @interval = interval
      @duration = duration
    end

    def call
      call_count.times do |n|
        yield
      end
    end

    private

    attr_reader :interval, :duration

    def call_count
      @call_count ||= (duration / interval)
    end
  end
end
