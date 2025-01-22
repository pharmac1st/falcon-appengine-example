#!/usr/bin/env -S falcon host

load :rack

# 8081 is the GAE default
port = ENV["PORT"] || 8081
hostname = File.basename(__dir__)

service hostname do
  include Falcon::Environment::Rack

  endpoint Async::HTTP::Endpoint.parse("http://0.0.0.0:#{port}").with(protocol: Async::HTTP::Protocol::HTTP11)

end
