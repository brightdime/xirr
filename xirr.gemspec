# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'xirr/version'

Gem::Specification.new do |spec|
  spec.name        = 'xirr'
  spec.version     = Xirr::VERSION
  spec.authors     = ['tubedude']
  spec.email       = ['beto@trevisan.me']
  spec.summary     = %q{Calculates XIRR (Bisection and Newton method) of a cashflow}
  spec.description = %q{Calculates IRR of a Cashflow, similar to Excel's XIRR formula. It defaults to Newton Method, but will calculate Bisection as well.}
  spec.homepage    = 'https://github.com/tubedude/xirr'
  spec.license     = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  # ✅ Updated for Ruby 3.2+ compatibility
  spec.required_ruby_version = '>= 3.1'

  # ✅ Modernized ActiveSupport constraints for Rails 7
  spec.add_dependency 'activesupport', '>= 6.1', '< 8'

  # ✅ Matching dev dependencies
  spec.add_development_dependency 'activesupport', '>= 6.1', '< 8'
  spec.add_development_dependency 'minitest', '~> 5.14'
  spec.add_development_dependency 'coveralls', '~> 0.8'
  spec.add_development_dependency 'bundler', '>= 2.2'
  spec.add_development_dependency 'rake', '~> 13.0'
end

