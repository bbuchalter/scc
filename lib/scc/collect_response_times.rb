require 'net/http'

module SCC
  # Given a URL, return an array of responses.
  class CollectResponseTimes
    def initialize(url:, interval:, duration:)
      @url = url
      @interval = interval
      @duration = duration
      @response_times = []
    end

    attr_reader :url, :interval, :duration, :response_times

    def call
      timer = SCC::Timer.new(
        interval: interval,
        duration: duration
      )

      timer.call do
        SCC::Logger.info "[COLLECT] Start request to #{url}."
        self.response_times << SCC::Stopwatch.call do
          Net::HTTP.get_response(URI(url))
        end
        SCC::Logger.info "[COLLECT] Finish request to #{url} in #{self.response_times.last} ms."
      end

      response_times
    end

    private

    attr_writer :response_times
  end
end
