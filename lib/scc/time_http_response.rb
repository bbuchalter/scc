require 'benchmark'

module SCC
  # Given a URL, return a Float representing the time get a response for an
  # HTTP request to that URL.
  class TimeHttpResponse
    def initialize(url:, http_get:)
      @url = url
      @http_get = http_get
    end

    def call
      time = Benchmark.measure do
        @http_get.call
      end
      time.real
    end
  end
end
