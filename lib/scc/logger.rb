require 'logger'

module SCC
  # Provides a simple logging interface.
  class Logger
    def self.setup(target)
      @logger = ::Logger.new(target)
    end

    def self.info(message)
      @logger.info(message) if @logger
    end
  end
end
