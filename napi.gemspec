# -*- encoding: utf-8 -*-

require File.dirname(__FILE__) + "/lib/napi/version"

Gem::Specification.new do |gem|
  gem.name          = "napi"
  gem.version       = Napi::VERSION
  gem.summary       = "INFO"
  gem.description   = "INFO"
  gem.authors       = ["iammanyadams"]
  gem.email         = ["iammanyadams@gmail.com"]
  gem.homepage      = "https://github.com/iammanyadams/napi"
  gem.license       = "MIT"

  gem.files         = Dir["{**/}{.*,*}"].select{ |path| File.file?(path) && path !~ /^pkg/ }
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.required_ruby_version = "~> 2.0"
end
