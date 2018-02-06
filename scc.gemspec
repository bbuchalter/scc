
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "scc/version"

Gem::Specification.new do |spec|
  spec.name          = "scc"
  spec.version       = Scc::VERSION
  spec.authors       = ["Brian Buchalter"]
  spec.email         = ["bal711@gmail.com"]

  spec.summary       = %q{Site Check CLI (SCC) is a command line tool to send HTTP requests to a URL and measure their average response time.}
  spec.description   = %q{Given a URL, a check interval, and a check duration SCC returns the average response time of that URL.}
  spec.homepage      = "https://github.com/bbuchalter/scc"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
