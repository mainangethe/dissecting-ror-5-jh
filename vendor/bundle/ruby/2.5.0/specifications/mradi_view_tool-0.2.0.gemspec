# -*- encoding: utf-8 -*-
# stub: mradi_view_tool 0.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "mradi_view_tool".freeze
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Ng'ethe Maina".freeze]
  s.bindir = "exe".freeze
  s.date = "2018-12-06"
  s.description = "Provides generated HTML data for Rails applications".freeze
  s.email = ["ngethe@mradi.co.ke".freeze]
  s.homepage = "https://mradi.co.ke".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.7.6".freeze
  s.summary = "Various view specific methods for applications I use.".freeze

  s.installed_by_version = "2.7.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.17"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
    else
      s.add_dependency(%q<bundler>.freeze, ["~> 1.17"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.17"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
  end
end
