require 'thor'
require 'scc'

class CLI < Thor
  desc 'average_response_time URL', 'Send an HTTP request to URL every 10 seconds for 60 seconds and calculate the average response time of the responses.'
  def average_response_time(url)
    # responses = SCC::CollectResponses.new(url: url).call
    # puts SCC::Reporting::Text.new(respones).call
  end
end
