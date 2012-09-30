# -*- encoding: utf-8 -*-
require File.expand_path('../lib/posterous_api/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Tomas D'Stefano"]
  gem.email         = ["tomas_stefano@successoft.com"]
  gem.description   = %q{Simple Integration with the Posterous API}
  gem.summary       = %q{}
  gem.homepage      = "https://github.com/tomas-stefano/posterous_api"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "posterous_api"
  gem.require_paths = ["lib"]
  gem.version       = Posterous::VERSION

  gem.add_dependency("httparty")
  gem.add_development_dependency("rspec", "~> 2.11")
  gem.add_development_dependency("fakeweb")
  gem.add_development_dependency("fuubar")
end
