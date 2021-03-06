# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "gnip/version"

Gem::Specification.new do |s|
  s.name        = "gnip-stream-parser"
  s.version     = Gnip::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Andy Ogzewalla"]
  s.email       = ["andyogzewalla@gmail.com"]
  s.homepage    = "https://github.com/WizardOfOgz/gnip"
  s.summary     = %q{A library for streaming data from Gnip}
  s.description = %q{This is a library for streaming and parsing data from Gnip Data Collector and Power Track feeds.}

  s.add_dependency 'eventmachine'
  s.add_dependency 'em-http-request'
  s.add_dependency 'yajl-ruby', '~> 0.8.2'
  s.add_dependency 'sergio', '>= 0.0.3'
  s.add_dependency 'curb', '~> 0.8.0'
  s.add_development_dependency 'rspec', '~> 2.5.0'
  s.add_development_dependency 'rake'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
