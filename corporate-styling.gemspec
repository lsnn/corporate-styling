# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'styling/style/version'

Gem::Specification.new do |spec|
  spec.name          = "corporate-styling"
  spec.version       = Styling::Style::VERSION
  spec.authors       = ["Lisanne Fellinger"]
  spec.email         = [""]
  spec.description   = %q{Imports corporate fonts, colors and styling}
  spec.summary       = %q{Adds corporate styling}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_runtime_dependency 'sass-rails', '~> 5.0'
  spec.add_runtime_dependency 'bootstrap-sass', '~> 3.3'
  spec.add_runtime_dependency 'font-awesome-rails'
end
