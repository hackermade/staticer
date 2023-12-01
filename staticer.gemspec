# frozen_string_literal: true

require_relative "lib/staticer/version"

Gem::Specification.new do |spec|
  spec.name = "staticer"
  spec.version = Staticer::VERSION
  spec.authors = ["RB"]
  spec.email = ["ab@hyperscale.gr"]
  spec.version = "0.0.1"
  spec.summary = "Generate Static Content Fast!"
  spec.license = "MIT"
  spec.homepage = "https://github.com/hackermade/staticer"
  spec.required_ruby_version = ">= 3.0.0"

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile])
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
