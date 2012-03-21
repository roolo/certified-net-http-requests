# -*- encoding: utf-8 -*-
require File.expand_path('../lib/certified-net-http-requests/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = %W("Mailo Svetel")
  gem.email         = %W(mailo@rooland.cz)
  gem.description   = %q{Gem for dealing with `SSL_connect returned=1 errno=0 state=SSLv3 read server certificate B: certificate verify failed` error}
  gem.summary       = %q{Make net/http verifying ssl certificates against Certificate Authorities from cURL CA bundle }
  gem.homepage      = "http://github.com/roolo/certified-net-http-requests"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "certified-net-http-requests"
  gem.require_paths = %W(lib)
  gem.version       = Certified::VERSION
end
