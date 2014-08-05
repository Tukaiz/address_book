$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "address_book/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "address_book"
  s.version     = AddressBook::VERSION
  s.authors     = ["Brett Lischalk"]
  s.email       = ["brett@brettlischalk.com"]
  s.homepage    = "TODO"
  s.summary     = "Provide Address Book functionality"
  s.description = "Provide Address Book functionality"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", ">= 4.0", "< 5"
  s.add_development_dependency 'faker'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'factory_girl_rails'

  s.add_development_dependency "sqlite3"
end
