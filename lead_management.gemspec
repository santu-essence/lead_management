# frozen_string_literal: true

require_relative "lib/lead_management/version"

Gem::Specification.new do |spec|
  spec.name = "lead_management"
  spec.version = LeadManagement::VERSION
  spec.authors = ["santu essence"]
  spec.email = ["santu.essence@gmail.com"]

  spec.summary = "Automate the lead management."
  spec.description = "Lead management that will help us to manage our team."
  spec.homepage = "https://github.com/santu-essence/lead_management"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  # spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/santu-essence/lead_management"
  spec.metadata["changelog_uri"] = "https://github.com/santu-essence/lead_management/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
