$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "exemplify/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "exemplify"
  s.version     = Exemplify::VERSION
  s.authors     = ["Alexey Efremov"]
  s.email       = ["aefremov@velidit.ru"]
  s.homepage    = "http://velidit.ru"
  s.summary     = "Rake tasks to help keep your production configurations out of the source control."
  s.description = "Exemplify eases templating of your configuration files, automatically detecting .example files and copying them in place."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.1.2"
end
