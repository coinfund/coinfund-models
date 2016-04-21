$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "coinfund/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "coinfund"
  s.version     = Coinfund::VERSION
  s.authors     = ["Jake Brukhman"]
  s.email       = ["jbrukh@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Coinfund."
  s.description = "TODO: Description of Coinfund."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", ">= 5.0.0.beta3", "< 5.1"

  s.add_development_dependency "sqlite3"
end
