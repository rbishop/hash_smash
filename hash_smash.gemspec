# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hash_smash/version'

Gem::Specification.new do |spec|
  spec.name          = "hash_smash"
  spec.version       = HashSmash::VERSION
  spec.authors       = ["Richard Bishop"]
  spec.email         = ["rbishop87@gmail.com"]
  spec.description   = %q{Compress a deeply nested hash down to a single level hash with dot separated keys representing the old hierarchy}
  spec.summary       = %q{Compress deeply nested hashes to single levels}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
