# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'difference_update_seed/version'

Gem::Specification.new do |spec|
  spec.name          = "difference_update_seed"
  spec.version       = DifferenceUpdateSeed::VERSION
  spec.authors       = ["AKAMATSU Yuki"]
  spec.email         = ["y.akamatsu@ukstudio.jp"]
  spec.summary       = %q{Difference updating for db:seed}
  spec.description   = %q{Difference updating for db:seed}
  spec.homepage      = "http://github.com/ukstudio/difference_update_seed"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", ">= 1.0.0"
  spec.add_development_dependency "rake"
end
