# -*- encoding: utf-8 -*-
# stub: rails-assets-modernizr 3.6.0 ruby lib

Gem::Specification.new do |s|
  s.name = "rails-assets-modernizr".freeze
  s.version = "3.6.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["rails-assets.org".freeze]
  s.date = "2018-03-16"
  s.description = "".freeze
  s.homepage = "https://github.com/Modernizr/Modernizr".freeze
  s.post_install_message = "This component doesn't define main assets in bower.json.\nPlease open new pull request in component's repository:\nhttps://github.com/Modernizr/Modernizr".freeze
  s.rubygems_version = "2.5.2".freeze
  s.summary = "".freeze

  s.installed_by_version = "2.5.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    else
      s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
  end
end
