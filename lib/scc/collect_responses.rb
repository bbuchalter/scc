module SCC
  # Given a URL, return an array of responses.
  class CollectResponses
    def initialize(url:)
      @url = url
      @responses = []
    end

    attr_reader :responses

    def call
      # collector = SCC::GetHTTPResponse.new(url: url)
      # timer = SCC::Timer.new(interval: 1, duration: 3)
      #
      # responses = []
      # timer.call { responses << collector.call }
      responses
    end
  end
end
