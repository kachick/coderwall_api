lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'coderwall/version'

Gem::Specification.new do |gem|
  gem.name          = 'coderwall_api'
  gem.version       = Coderwall::VERSION.dup
  gem.authors       = ['Kenichi Kamiya']
  gem.licenses      = ['MIT']
  gem.email         = ['kachick1+ruby@gmail.com']
  gem.summary       = 'An API wrapper for the coderwall.com'
  gem.description   = gem.summary.dup
  gem.homepage      = 'http://kachick.github.com/coderwall_api'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'striuct', '~> 0.4.2'

  gem.add_development_dependency 'declare', '~> 0.0.5'
  gem.add_development_dependency 'yard', '~> 0.8'
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'bundler'
end
