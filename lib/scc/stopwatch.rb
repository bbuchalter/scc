require 'benchmark'

module SCC
  # Given a block, return a Float representing the time in milliseconds,
  # to execute the block.
  class Stopwatch
    def self.call
      time = Benchmark.measure do
        yield
      end
      time.real
    end
  end
end
