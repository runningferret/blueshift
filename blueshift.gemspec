# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'blueshift/version'

Gem::Specification.new do |spec|
  spec.name          = 'blueshift'
  spec.version       = Blueshift::VERSION
  spec.authors       = ['Gabriel Mansour']
  spec.email         = ['dev+gabriel@influitive.com']

  spec.description   = %q{Amazon Redshift adapter for Sequel}
  spec.summary       = %q{Amazon Redshift adapter for Sequel}
  spec.homepage      = 'https://github.com/influitive/blueshift'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'sequel', '~> 0'
  spec.add_dependency 'pg', '~> 0'

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
