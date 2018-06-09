# -*- encoding: utf-8 -*-
# stub: middleman-disqus 1.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "middleman-disqus".freeze
  s.version = "1.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Simon Rice".freeze, "Luke Antins".freeze]
  s.date = "2016-01-11"
  s.description = "A Middleman extension to integrate Disqus into your site,\nsupporting Disqus configuration variables and comment counts.\n".freeze
  s.email = ["im@simonrice.com".freeze]
  s.homepage = "http://github.com/simonrice/middleman-disqus".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.5.2".freeze
  s.summary = "Quickly integrate Disqus comments into your Middleman site".freeze

  s.installed_by_version = "2.5.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<middleman-core>.freeze, ["~> 4.0"])
    else
      s.add_dependency(%q<middleman-core>.freeze, ["~> 4.0"])
    end
  else
    s.add_dependency(%q<middleman-core>.freeze, ["~> 4.0"])
  end
end
