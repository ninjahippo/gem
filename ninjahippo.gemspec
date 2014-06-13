$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "ninjahippo/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "ninjahippo"
  s.version     = Ninjahippo::VERSION
  s.authors     = ["Joah Gerstenberg"]
  s.email       = ["me@joahg.com"]
  s.homepage    = "http://ninjahippo.io"
  s.summary     = "The CMS built for developers by developers."
  s.description = "The CMS built for developers by developers."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.11"
end
