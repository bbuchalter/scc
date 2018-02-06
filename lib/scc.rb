# Top level namespace for SiteCheckCLI (SCC)
module SCC
end

# After top level namespace is defined, we can start requiring into that namespace.
require "scc/version"
require 'scc/collect_response_times'
require 'scc/timer'
require 'scc/stopwatch'
