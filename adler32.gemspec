# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'adler32/version'

Gem::Specification.new do |spec|
  spec.name          = "adler32"
  spec.version       = Adler32::VERSION
  spec.authors       = ["Makoto Sakata"]
  spec.email         = ["maco.sakata@gmail.com"]
  spec.summary       = "A Ruby implementation of Adler-32 checksum algorithm"
  spec.description   = "see http://en.wikipedia.org/wiki/Adler-32 for the algorithm details"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
