# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'easy_currency/version'

Gem::Specification.new do |spec|
  spec.name          = "easy_currency"
  spec.version       = EasyCurrency::VERSION
  spec.authors       = ["Shlomo Twerski"]
  spec.email         = ["ystwerski@gmail.com"]
  spec.summary       = %q{Allows your app to use current exchange rates.}
  spec.description   = %q{If your app needs the use of current exchange rates: Either just statically to display them for the user or dynamically to receive info from the user and return rates accordingly, this is the app!}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency "unirest"
end
