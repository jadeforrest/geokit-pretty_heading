# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "geokit-pretty_heading/version"

Gem::Specification.new do |s|
  s.name        = "geokit-pretty_heading"
  s.version     = Geokit::Prettyheading::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Jade Rubick"]
  s.email       = ["jade@rubick.com"]
  s.homepage    = "http://rubygems.org/gems/geokit-pretty_heading"
  s.summary     = %q{When given two lat/long pairs, displays a pretty heading, like North Northeast.}
  s.description = %q{Displays a nicely formatted heading in English. See http://en.wikipedia.org/wiki/Boxing_the_compass for the algorithm used}

  s.rubyforge_project = "geokit-pretty_heading"

  s.add_dependency('geokit')

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
