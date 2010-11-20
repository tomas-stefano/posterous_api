# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{posterous_api}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tomas D'Stefano"]
  s.date = %q{2010-11-20}
  s.description = %q{}
  s.email = %q{tomasdestefi@gmail.com}
  s.files = [
    ".infinity_test",
    ".rspec",
    ".rvmrc",
    "Gemfile",
    "Gemfile.lock",
    "Rakefile",
    "Readme.markdown",
    "lib/posterous_api.rb",
    "lib/posterous_api/base_uri.rb",
    "lib/posterous_api/connection.rb",
    "lib/posterous_api/new_api.rb",
    "lib/posterous_api/old_api.rb",
    "lib/posterous_api/user.rb",
    "spec/posterous_api/base_uri_spec.rb",
    "spec/posterous_api/connection_spec.rb",
    "spec/posterous_api/new_api_spec.rb",
    "spec/posterous_api/old_api_spec.rb",
    "spec/posterous_api/posterous_api_spec.rb",
    "spec/posterous_api/user_spec.rb",
    "spec/spec_helper.rb",
    "spec/support/faker_response.rb"
  ]
  s.homepage = %q{http://github.com/tomas-stefano/posterous_api}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{}
  s.test_files = [
    "spec/posterous_api/base_uri_spec.rb",
    "spec/posterous_api/connection_spec.rb",
    "spec/posterous_api/new_api_spec.rb",
    "spec/posterous_api/old_api_spec.rb",
    "spec/posterous_api/posterous_api_spec.rb",
    "spec/posterous_api/user_spec.rb",
    "spec/spec_helper.rb",
    "spec/support/faker_response.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<httparty>, ["= 0.6.1"])
      s.add_runtime_dependency(%q<jeweler>, [">= 0"])
      s.add_runtime_dependency(%q<httparty>, [">= 0.6.1"])
    else
      s.add_dependency(%q<httparty>, ["= 0.6.1"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<httparty>, [">= 0.6.1"])
    end
  else
    s.add_dependency(%q<httparty>, ["= 0.6.1"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<httparty>, [">= 0.6.1"])
  end
end

