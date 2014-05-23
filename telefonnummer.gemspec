$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "telefonnummer/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "telefonnummer"
  s.version     = Telefonnummer::VERSION
  s.authors     = ["Marcus Hjelm"]
  s.email       = ["marcus@makemedia.se"]
  s.homepage    = "https://github.com/marcushjelm/telefonnummer"
  s.summary     = "Format a swedish phone number"
  s.description = "Format a swedish phone number"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0"

  s.add_development_dependency "sqlite3"
end
