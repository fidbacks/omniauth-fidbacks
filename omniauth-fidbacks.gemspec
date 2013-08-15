# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth-fidbacks/version'

Gem::Specification.new do |gem|
  gem.name          = "omniauth-fidbacks"
  gem.version       = Omniauth::Fidbacks::VERSION
  gem.authors       = ["Thomas Bancel"]
  gem.email         = ["bancel.thomas@gmail.com"]
  gem.summary       = %q{Fidbacks strategy for OmniAuth}
  gem.homepage      = "https://github.com/projeth/omniauth-fidbacks"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency 'omniauth-oauth2', '~> 1.0.2'
  gem.add_development_dependency 'rspec', '~> 2'
  gem.add_development_dependency 'rake'
end
