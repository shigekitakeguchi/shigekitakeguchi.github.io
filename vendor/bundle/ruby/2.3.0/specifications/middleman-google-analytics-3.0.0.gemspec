# -*- encoding: utf-8 -*-
# stub: middleman-google-analytics 3.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "middleman-google-analytics".freeze
  s.version = "3.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Daniel Bayerlein".freeze, "Jon Frisby".freeze]
  s.date = "2016-12-21"
  s.description = "middleman-google-analytics is a Middleman extension that generates Google Analytics tracking code, and keeps your config in config.rb, where it belongs.".freeze
  s.email = ["daniel.bayerlein@googlemail.com".freeze, "jfrisby@mrjoy.com".freeze]
  s.homepage = "https://github.com/danielbayerlein/middleman-google-analytics".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3".freeze)
  s.rubygems_version = "2.5.2".freeze
  s.summary = "A Middleman plugin for handling Google Analytics tracking code.".freeze

  s.installed_by_version = "2.5.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<middleman-core>.freeze, [">= 3.4"])
      s.add_runtime_dependency(%q<uglifier>.freeze, ["< 4.0", ">= 2.5"])
      s.add_runtime_dependency(%q<activesupport>.freeze, ["< 5.1", ">= 4.1"])
      s.add_runtime_dependency(%q<erubis>.freeze, [">= 0"])
    else
      s.add_dependency(%q<middleman-core>.freeze, [">= 3.4"])
      s.add_dependency(%q<uglifier>.freeze, ["< 4.0", ">= 2.5"])
      s.add_dependency(%q<activesupport>.freeze, ["< 5.1", ">= 4.1"])
      s.add_dependency(%q<erubis>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<middleman-core>.freeze, [">= 3.4"])
    s.add_dependency(%q<uglifier>.freeze, ["< 4.0", ">= 2.5"])
    s.add_dependency(%q<activesupport>.freeze, ["< 5.1", ">= 4.1"])
    s.add_dependency(%q<erubis>.freeze, [">= 0"])
  end
end
