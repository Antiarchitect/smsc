# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "smsc/version"

Gem::Specification.new do |s|
  s.name        = "smsc"
  s.version     = Smsc::VERSION
  s.authors     = ["Andrey Voronkov"]
  s.email       = ["voronkovaa@gmail.com"]
  s.homepage    = "http://github.com/Antiarchitect/smsc"
  s.summary     = %q{Simple client for sending SMS via smsc.ru}
  s.description = %q{Simple client for sending SMS via smsc.ru}

  s.rubyforge_project = "smsc"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_dependency 'faraday', '~> 0.9'
end
