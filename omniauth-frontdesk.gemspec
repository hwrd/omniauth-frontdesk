# coding: utf-8
require File.expand_path('../lib/omniauth-frontdesk/version', __FILE__)

Gem::Specification.new do |spec|
  spec.name          = "omniauth-frontdesk"
  spec.version       = Omniauth::Frontdesk::VERSION
  spec.authors       = ["Brian Howenstein"]
  spec.email         = ["brian@hwrd.com"]
  spec.summary       = %q{OmniAuth strategy for Front Desk.}
  spec.description   = %q{OmniAuth strategy for Front Desk.}
  spec.homepage      = "https://github.com/hwrd/omniauth-frontdesk"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'omniauth', '~> 1.0'
  spec.add_dependency 'omniauth-oauth2', '~> 1.1'
  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
