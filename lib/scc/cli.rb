require 'thor'
require 'scc'

class CLI < Thor
  desc 'average_response_time URL', 'Send an HTTP request to URL every 10 seconds for 60 seconds and calculate the average response time of the responses.'
  def average_response_time(url)
    SCC::Logger.setup(STDOUT)

    response_times = SCC::CollectResponseTimes.new(
      url: url,
      interval: 10,
      duration: 60
    ).call

    puts "Average response time: #{SCC::AverageCalculator.new(numbers: response_times).call}"
  end
end
