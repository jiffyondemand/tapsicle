$:.unshift File.expand_path("../lib", __FILE__)
require "taps/version"

Gem::Specification.new do |gem|
  gem.name        = "tapsicle"
  gem.version     = Taps.version
  gem.author      = "Ricardo Chimal, Jr."
  gem.email       = "ricardo@heroku.com"
  gem.homepage    = "http://github.com/jiffyondemand/tapsicle"
  gem.summary     = "simple database import/export app"
  gem.description = "A simple database agnostic import/export app to transfer data to/from a remote database.
Tapsicle includes fixes submitted by the community."
  gem.executables = %w( taps schema )

  gem.files = Dir["**/*"].select { |d| d =~ %r{^(README|VERSION|bin/|data/|ext/|lib/|spec/|test/)} }

  gem.add_runtime_dependency "rack",          ">= 1.0.1"
  gem.add_runtime_dependency "rest-client",   ">= 1.4.0", "< 1.7.0"
  gem.add_runtime_dependency "sequel",        "~> 3.20.0"
  gem.add_runtime_dependency "sinatra",       "~> 1.4.4"
  gem.add_runtime_dependency "sqlite3",       "~> 1.3.8"

  gem.add_development_dependency "bacon"
  gem.add_development_dependency "mocha"
  gem.add_development_dependency "rack-test"
  gem.add_development_dependency "rake"
  gem.add_development_dependency "simplecov"
end

