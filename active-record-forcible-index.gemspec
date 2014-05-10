# encoding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name             = "active-record-forcible-index"
  spec.version          = "0.0.2"
  spec.authors          = ["Catalin Ilinca", "Alexandru Emil Lupu"]
  spec.email            = ["c@talin.ro", "contact@alecslupu.ro"]
  spec.description      = %q{ActiveRecord extension that gives USE and FORCE index to any ActiveRecord Model.}
  spec.summary          = %q{Use the desired index}
  spec.homepage         = "https://github.com/2Parale/active-record-forcible-index"
  spec.license          = "MIT"
  spec.extra_rdoc_files = [
    "README.md",
    "CHANGELOG.md"
  ]

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'activerecord', '~> 4.0'
  spec.add_development_dependency 'rspec', '~> 2.0'
  spec.add_development_dependency "rspec-given"
  spec.add_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
