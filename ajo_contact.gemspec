$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "ajo_contact/version"

# Describe your gem and declare its dependencies:

Gem::Specification.new do |s|
  s.name        = "ajo_contact"
  s.version     = AjoContact::VERSION
  s.authors     = ["Andrew Joe"]
  s.email       = ["andrew@ajoconsulting.com"]
  s.homepage    = "http://www.ajoconsulting.com"
  s.summary     = "drop in contact form"
  s.description = "AJO Consulting"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]
  s.require_paths = ["lib"]

  s.add_dependency "rails", "~> 3.2.12"
  s.add_dependency "haml"
  s.add_dependency "railties", "~> 3.2.12"


  s.add_development_dependency "pg"
  s.add_development_dependency "thin"
  s.add_development_dependency "bootstrap-sass"
end
