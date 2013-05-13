# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'zazzle_rails/version'

Gem::Specification.new do |spec|
  spec.name          = "zazzle_rails"
  spec.version       = ZazzleRails::VERSION
  spec.authors       = ["Nephtali Rodriguez"]
  spec.email         = ["nukz45@gmail.com"]
  spec.description   = %q{A way to retrieve products from a Zazzle store.}
  spec.summary       = %q{A gem to connect to retrieve a list of products from Zazzle Marketplace}
  spec.homepage      = "https://github.com/nrodriguez/zazzle_rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_dependency "feedzirra"
end
