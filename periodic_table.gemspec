# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "periodic_table/version"

Gem::Specification.new do |s|
  s.name        = "periodic_table"
  s.version     = PeriodicTable::VERSION
  s.authors     = ["Stephen Ball"]
  s.email       = ["sdball@gmail.com"]
  s.homepage    = "https://github.com/sdball/periodic_table"
  s.summary     = %q{Provide periodic table data.}
  s.description = %q{Provide data on elements in the periodic table.}

  s.rubyforge_project = "periodic_table"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'

  s.add_runtime_dependency 'savon'
end
