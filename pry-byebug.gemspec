# frozen_string_literal: true

require File.dirname(__FILE__) + "/lib/pry-byebug/version"

Gem::Specification.new do |gem|
  gem.name = "pry-byebug"
  gem.version = PryByebug::VERSION
  gem.authors = ["David Rodríguez", "Gopal Patel"]
  gem.email = "deivid.rodriguez@gmail.com"
  gem.license = "MIT"
  gem.homepage = "https://github.com/deivid-rodriguez/pry-byebug"
  gem.summary = "Fast debugging with Pry."
  gem.description = "Combine 'pry' with 'byebug'. Adds 'step', 'next', 'finish',
    'continue' and 'break' commands to control execution."

  if gem.respond_to?(:metadata)
    gem.metadata["allowed_push_host"] = "https://rubygems.pkg.github.com/glooko"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  gem.files = Dir["lib/**/*.rb", "LICENSE"]
  gem.extra_rdoc_files = %w[CHANGELOG.md README.md]
  gem.require_path = "lib"
  gem.executables = []

  # Dependencies
  gem.required_ruby_version = ">= 2.4.0"

  gem.add_runtime_dependency "byebug", "~> 11.0"
  gem.add_runtime_dependency "pry", ">= 0.13", "< 0.15"
end
