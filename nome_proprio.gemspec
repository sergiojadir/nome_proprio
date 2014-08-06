# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nome_proprio/version'

Gem::Specification.new do |spec|
  spec.name          = "nome_proprio"
  spec.version       = NomeProprio::VERSION
  spec.authors       = ["Sergio Jadir Ribeiro Leite"]
  spec.email         = ["sergio_jadir@outlook.com"]
  spec.summary       = %q{Nome próprio}
  spec.description   = %q{Transforma nome em qualquer formato como nome próprio.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
