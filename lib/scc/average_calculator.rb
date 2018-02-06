module SCC
  class AverageCalculator
    def initialize(numbers:)
      raise ArgumentError if numbers.empty?

      @numbers = numbers
    end

    def call
      numbers.sum / numbers.size
    end

    private

    attr_reader :numbers
  end
end
