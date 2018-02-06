require 'logger'

module SCC
  @logger = Logger.new(STDOUT)

  def self.log
    @logger
  end
end
