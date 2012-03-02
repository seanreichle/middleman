# -*- encoding: utf-8 -*-
require "rbconfig"

$:.push File.expand_path("../lib", __FILE__)
require "middleman/version"

Gem::Specification.new do |s|
  s.name        = "middleman"
  s.version     = Middleman::VERSION
  s.platform    = Gem::Platform::RUBY
  s.license     = "MIT"
  s.authors     = ["Thomas Reynolds"]
  s.email       = ["me@tdreyno.com"]
  s.homepage    = "http://middlemanapp.com"
  s.summary     = "Hand-crafted frontend development"
  s.description = "A static site generator based on Sinatra. Providing dozens of templating languages (Haml, Sass, Compass, Slim, CoffeeScript, and more). Makes minification, compression, cache busting, Yaml data (and more) an easy part of your development cycle."

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {fixtures,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # TODO remove for 2.1.x
  s.post_install_message =<<eos
********************************************************************************

  Welcome to Middleman 2.0

  In addition to many new features, some backwards-incompatible
  changes have been made to the structure of Middleman sites.

  Before running you old, v1.x project on Middleman 2.0,
  review the Migration guide:

  http://middlemanapp.com/guides/migrating

********************************************************************************
eos

  s.add_dependency("rack", ["~> 1.3.5"])
  s.add_dependency("thin", ["~> 1.2.11"])
  s.add_dependency("thor", ["~> 0.14.0"])
  s.add_dependency("tilt", ["~> 1.3.1"])
  s.add_dependency("maruku", ["~> 0.6.0"])
  s.add_dependency("sinatra", ["~> 1.3.1"])
  # s.add_dependency("sinatra-synchrony", ["~> 0.2.1"])
  s.add_dependency("rack-test", ["~> 0.6.1"])
  s.add_dependency("uglifier", ["~> 1.0.0"])
  s.add_dependency("slim", ["~> 1.0.2"])
  s.add_dependency("haml", ["~> 3.1.0"])
  s.add_dependency("sass", ["~> 3.2.0.alpha"])
  s.add_dependency("compass", ["~> 0.12.rc"])
  s.add_dependency("coffee-script", ["~> 2.2.0"])
  s.add_dependency("execjs", ["~> 1.2.7"])
  s.add_dependency("sprockets", ["~> 2.0.3"])
  s.add_dependency("padrino-core", ["~> 0.10.5"])
  s.add_dependency("padrino-helpers", ["~> 0.10.5"])

  s.add_dependency("guard", ["~> 0.6.2"])
  s.add_dependency("middleman-livereload", ["~> 0.2.0"])

  # Development and test
  s.add_development_dependency("coffee-filter", ["~> 0.1.1"])
  s.add_development_dependency("liquid", ["~> 2.2.0"])
  s.add_development_dependency("cucumber", ["~> 1.0.2"])
  s.add_development_dependency("rake", ["~> 0.9.2"])
  s.add_development_dependency("rspec", ["~> 2.6.0"])
end

