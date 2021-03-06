require "date"
require File.expand_path("../lib/base32/version", __FILE__)

Gem::Specification.new do |s|
  s.authors       = "Martin Fenner"
  s.email         = "mfenner@datacite.org"
  s.name          = "base32-url"
  s.homepage      = "https://github.com/datacite/base32-url"
  s.summary       = "Ruby client library for conversion of DOI Metadata"
  s.date          = Date.today
  s.description   = "32-symbol notation for expressing numbers in a form that can be conveniently and accurately transmitted between humans. URL-friendly version of the base32-crockford gem."
  s.require_paths = ["lib"]
  s.version       = Base32::Url::VERSION
  s.extra_rdoc_files = ["README.md"]
  s.license       = 'MIT'
  s.required_ruby_version = '~> 2.2'

  # Declary dependencies here, rather than in the Gemfile
  s.add_development_dependency 'bundler', '~> 1.0'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'test-unit', '~> 3.2.3'

  s.require_paths = ["lib"]
  s.files       = `git ls-files`.split($/)
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
end
