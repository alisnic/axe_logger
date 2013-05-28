# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'logger'
VERSION = '0.0.1'

Gem::Specification.new do |spec|
  spec.name          = "axe_logger"
  spec.version       = VERSION
  spec.authors       = ["Andrei Lisnic"]
  spec.email         = ["andrei.lisnic@gmail.com"]
  spec.description   = %q{The same logger, only with colored output and line numbers and functions}
  spec.summary       = %q{the same logger, only a bit fancier}
  spec.homepage      = "https://github.com/alisnic/axe_logger"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
