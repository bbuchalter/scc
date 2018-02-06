module SCC
  # Given a URL, return an array of responses.
  class CollectResponses
    def initialize(url:)
      @url = url
    end

    def call
      @url
    end
  end
end
