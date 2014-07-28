$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'uber_presenter/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'uber-presenter'
  s.version     = UberPresenter::VERSION
  s.authors     = ['Alexander Gorbunov']
  s.email       = ['lexgorbunov@gmail.com']
  s.homepage    = 'https://github.com/lexgorbunov/uber-presenter'
  # s.summary     = 'TODO: Summary of UberPresenter.'
  # s.description = 'TODO: Description of UberPresenter.'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.rdoc']
  s.test_files = Dir['test/**/*']

  s.add_dependency 'rails', '~> 3.2.12'
  s.add_dependency 'memoist', '~> 0.9.3'
end
