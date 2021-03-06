$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "global_options/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "global_options"
  s.version     = GlobalOptions::VERSION
  s.authors     = ["Kasper Johansen"]
  s.email       = ["kaspernj@gmail.com"]
  s.homepage    = "https://www.github.com/kaspernj/global_options"
  s.summary     = "Set global options through your database."
  s.description = "Easily handle global options for your webpage by using nice pre-made database models."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", ">= 5.1.0"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "factory_bot_rails"
  s.add_development_dependency "forgery"
end
