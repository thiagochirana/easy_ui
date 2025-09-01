require_relative "lib/easy_ui/version"

Gem::Specification.new do |spec|
  spec.name        = "easy_ui"
  spec.version     = EasyUi::VERSION
  spec.authors     = [ "Chirana" ]
  spec.email       = [ "engsw.thiago@gmail.com" ]
  spec.homepage    = "https://github.com/chirana/easy_ui"
  spec.summary     = "Easy fast Ui in Tailwind, ViewComponents and Stimulus"
  spec.description = "EasyUi is a Rails gem that provides a set of pre-built UI components for your Rails application."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/chirana/easy_ui"
  spec.metadata["changelog_uri"] = "https://github.com/chirana/easy_ui/blob/main/CHANGELOG.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 8.0.2.1"
  spec.add_dependency "view_component", "~> 4.0"
  spec.add_dependency "stimulus-rails", "~> 1.2"
  spec.add_dependency "tailwindcss-rails", "~> 4.3"
  spec.add_dependency "tailwindcss-ruby", "~> 4.1"
end
