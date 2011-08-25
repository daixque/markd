# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{markd}
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["daisuke sugimori"]
  s.date = %q{2011-08-25}
  s.description = %q{markd is html report builder for markdown. markd makes well-formatted html with CSS and prittfied code by Google Code Prettify.}
  s.email = %q{daixque@gmail.com}
  s.executables = ["markd", "markd"]
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]
  s.files = [
    ".document",
    "Gemfile",
    "LICENSE.txt",
    "README.md",
    "Rakefile",
    "VERSION",
    "bin/markd",
    "lib/markd.rb",
    "markd.gemspec",
    "template/css/markd.css",
    "template/google-code-prettify/lang-apollo.js",
    "template/google-code-prettify/lang-clj.js",
    "template/google-code-prettify/lang-css.js",
    "template/google-code-prettify/lang-go.js",
    "template/google-code-prettify/lang-hs.js",
    "template/google-code-prettify/lang-lisp.js",
    "template/google-code-prettify/lang-lua.js",
    "template/google-code-prettify/lang-ml.js",
    "template/google-code-prettify/lang-n.js",
    "template/google-code-prettify/lang-proto.js",
    "template/google-code-prettify/lang-scala.js",
    "template/google-code-prettify/lang-sql.js",
    "template/google-code-prettify/lang-tex.js",
    "template/google-code-prettify/lang-vb.js",
    "template/google-code-prettify/lang-vhdl.js",
    "template/google-code-prettify/lang-wiki.js",
    "template/google-code-prettify/lang-xq.js",
    "template/google-code-prettify/lang-yaml.js",
    "template/google-code-prettify/prettify.css",
    "template/google-code-prettify/prettify.js",
    "template/js/jquery.min.js",
    "template/js/markd.js",
    "template/template.html.erb",
    "test/helper.rb",
    "test/test_markd.rb"
  ]
  s.homepage = %q{http://github.com/daixque/markd}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.7.2}
  s.summary = %q{html report builder for markdown}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<erubis>, [">= 0"])
      s.add_runtime_dependency(%q<bluecloth>, [">= 0"])
      s.add_runtime_dependency(%q<nokogiri>, [">= 0"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.6.4"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
    else
      s.add_dependency(%q<erubis>, [">= 0"])
      s.add_dependency(%q<bluecloth>, [">= 0"])
      s.add_dependency(%q<nokogiri>, [">= 0"])
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
      s.add_dependency(%q<rcov>, [">= 0"])
    end
  else
    s.add_dependency(%q<erubis>, [">= 0"])
    s.add_dependency(%q<bluecloth>, [">= 0"])
    s.add_dependency(%q<nokogiri>, [">= 0"])
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
    s.add_dependency(%q<rcov>, [">= 0"])
  end
end

