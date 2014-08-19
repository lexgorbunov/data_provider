$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'uber_presenter/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'uber_presenter'
  s.version     = UberPresenter::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Alexander Gorbunov']
  s.email       = ['lexgorbunov@gmail.com']
  s.homepage    = 'https://github.com/lexgorbunov/uber-presenter'
  s.summary     = 'Gem to add presenters to RoR projects'
  s.description = 'UberPresenter is a gem to add presenters to Ruby on Rails projects'
  s.license     = 'MIT'

  # s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.rdoc']
  # s.test_files = Dir['test/**/*']
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- test/*`.split("\n")
  s.require_paths = ['lib']

  s.add_dependency 'rails', '>= 3.2.12'
  s.add_dependency 'railties', '>= 3.2.6'
  s.add_dependency 'memoist', '>= 0.9.3'
end
