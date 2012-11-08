# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'motion_stripe/version'

Gem::Specification.new do |gem|
  gem.name          = "motion_stripe"
  gem.version       = MotionStripe::VERSION
  gem.authors       = ["Scott Ballantyne"]
  gem.email         = ["ussballantyne@gmail.com"]
  gem.description   = %q{stripe-ios wrapper for rubymotion}
  gem.summary       = %q{stripe-ios wrapper for rubymotion}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
