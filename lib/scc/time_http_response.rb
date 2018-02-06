module SCC
  # Given a URL, return a Float representing the time get a response for an
  # HTTP request to that URL.
  class TimeHttpResponse
    def initialize(url:)
      @url = url
    end

    def call
      0.0
    end
  end
end
