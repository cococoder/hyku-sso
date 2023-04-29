# frozen_string_literal: true
$LOAD_PATH.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "hyku/sso/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "hyku-sso"
  spec.version     = Hyku::Sso::VERSION
  spec.authors     = ["edward"]
  spec.email       = ["bauchiroad@gmail.com"]
  spec.homepage    = "http://www.github.com"
  spec.summary     = "whatever Summary of Hyrax::Sso."
  spec.description = "whatever Description of Hyrax::Sso."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 5.2.6"
  spec.add_dependency "hyrax", "~> 2.9"
  spec.add_dependency "flipflop", "~> 2.6"
  

  spec.add_development_dependency "sqlite3", "~> 1.4.2"

  spec.add_development_dependency "capybara"
  spec.add_development_dependency "chromedriver-helper", "~> 2.1"
  spec.add_development_dependency "webmock", "~> 3.14"
  spec.add_development_dependency "pg"
  spec.add_development_dependency "rspec-rails"
  spec.add_development_dependency "factory_bot_rails"
  spec.add_development_dependency "rspec_junit_formatter", "~> 0.4"
  spec.add_development_dependency "web-console", "~> 3.7"
  spec.add_development_dependency "bixby", "~> 1.0.0"
  spec.add_development_dependency "webdrivers", "~> 4.0"
  spec.add_development_dependency("simplecov", "0.17.1", "< 0.18")
end
