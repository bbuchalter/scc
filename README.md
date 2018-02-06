# Scc
Site Check CLI (SCC) is a command line tool to send HTTP requests to a URL and measure their average response time.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'scc'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install scc

## Usage

After installation, `scc` is exposed as an executable and provides detailed
usage commands via `scc -h`:

```
Commands:
  scc average_response_time URL  # Send an HTTP request to URL every 10 seconds for 60 seconds and calculate the average response time of the responses.
  scc help [COMMAND]             # Describe available commands or one specific command
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

To exercise the CLI without installing the gem: `ruby -I lib bin/scc`

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/scc. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Scc project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/scc/blob/master/CODE_OF_CONDUCT.md).
