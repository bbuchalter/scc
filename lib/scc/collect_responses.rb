module SCC
  # Given a URL, return an array of responses.
  class CollectResponses
    def initialize(url:)
      @url = url
      @responses = []
    end

    attr_reader :responses

    def call
      # time_http_response = SCC::TimeHTTPResponse.new(url: url)
      # timer = SCC::Timer.new(interval: 1, duration: 3)
      #
      # http_response_times = []
      # timer.call { http_response_times << time_http_response.call }
      responses
    end
  end
end
