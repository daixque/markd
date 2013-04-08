# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "markd"
  s.version = "0.2.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["daisuke sugimori"]
  s.date = "2013-04-08"
  s.description = "markd is html builder for markdown, textile and wiki. markd makes well-formatted html with CSS and prittfied code by Google Code Prettify."
  s.email = "daixque@gmail.com"
  s.executables = ["markd", "markd"]
  s.extra_rdoc_files = [
    "README.md"
  ]
  s.files = [
    ".document",
    "Gemfile",
    "README.md",
    "Rakefile",
    "VERSION",
    "bin/markd",
    "lib/markd.rb",
    "lib/markd/engines.rb",
    "lib/markd/markd.rb",
    "markd.gemspec",
    "template/css/markd-print.css",
    "template/css/markd-screen.css",
    "template/css/markd.css",
    "template/css/prettify.css",
    "template/js/jquery.min.js",
    "template/js/markd.js",
    "template/js/prettify.js",
    "template/template.html.erb",
    "test/helper.rb",
    "test/test_markd.rb"
  ]
  s.homepage = "http://github.com/daixque/markd"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.17"
  s.summary = "html builder for markdown, textile and wiki"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<erubis>, [">= 0"])
      s.add_runtime_dependency(%q<bluecloth>, [">= 0"])
      s.add_runtime_dependency(%q<nokogiri>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
    else
      s.add_dependency(%q<erubis>, [">= 0"])
      s.add_dependency(%q<bluecloth>, [">= 0"])
      s.add_dependency(%q<nokogiri>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    end
  else
    s.add_dependency(%q<erubis>, [">= 0"])
    s.add_dependency(%q<bluecloth>, [">= 0"])
    s.add_dependency(%q<nokogiri>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
  end
end

