# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ember-rails-i18n/version'

Gem::Specification.new do |spec|
  spec.name          = "ember-i18n"
  spec.version       = EmberRailsI18n::VERSION
  spec.authors       = ["Kristjan Rang"]
  spec.email         = ["mail@rang.ee"]
  spec.summary       = %q{Use Rails I18n with Ember}
  spec.description   = ""
  spec.homepage      = ""
  spec.license       = "GPL2"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  
  spec.add_dependency "therubyracer"
  spec.add_dependency "railties", ">= 3.0"
end
