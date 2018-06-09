# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails-assets-popper.js/version'

Gem::Specification.new do |spec|
  spec.name          = "rails-assets-popper.js"
  spec.version       = RailsAssetsPopperJs::VERSION
  spec.authors       = ["rails-assets.org"]
  spec.description   = "A kickass library to manage your poppers"
  spec.summary       = "A kickass library to manage your poppers"
  spec.homepage      = "https://popper.js.org/"
  spec.license       = "MIT"

  spec.files         = `find ./* -type f | cut -b 3-`.split($/)
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
