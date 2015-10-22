# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'us_web_design_standards/version'

Gem::Specification.new do |s|
  s.name          = 'us_web_design_standards'
  s.version       = USWebDesignStandards::VERSION
  s.authors       = ['Mike Bland']
  s.email         = ['michael.bland@gsa.gov']
  s.summary       = 'U.S. Web Design Standards assets'
  s.description   = (
    'Packages the U.S. Web Design Standards assets as a Ruby Gem for use in ' \
    'a Jekyll project.'
  )
  s.homepage      = 'https://github.com/18F/us_web_design_standards_gem'
  s.license       = 'CC0'

  s.files         = `git ls-files -z *.md lib assets`.split("\x0")
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename f }

  s.add_runtime_dependency 'sass', '~> 3.4'
  s.add_development_dependency 'go_script'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'bundler'
  s.add_development_dependency 'rubocop'
end
