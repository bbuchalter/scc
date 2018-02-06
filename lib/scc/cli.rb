require 'thor'
require 'scc'

class CLI < Thor
  desc 'average_response_time URL', 'Send an HTTP request to URL every 10 seconds for 60 seconds and calculate the average response time of the responses.'
  def average_response_time(url)
    response_times = SCC::CollectResponseTimes.new(
      url: url,
      interval: 10,
      duration: 60
    ).call
    puts response_times.inspect
    # puts SCC::Reporting::Text.new(respones).call
  end
end
