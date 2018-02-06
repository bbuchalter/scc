require "scc/version"

module SCC
  class CollectResponses
    def initialize(url:)
      @url = url
    end

    def call
      puts @url
    end
  end
end
