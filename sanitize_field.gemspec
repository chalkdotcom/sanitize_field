# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sanitize_field/version'

Gem::Specification.new do |spec|
  spec.name          = "sanitize_field"
  spec.version       = SanitizeField::VERSION
  spec.authors       = ["Ryan McKay-Fleming"]
  spec.email         = ["ryan@chalk.com"]
  spec.summary       = %q{A nice wrapper over Sanitize to sanitize ActiveRecord fields on save.}
  spec.description   = %q{A nice wrapper over Sanitize to sanitize ActiveRecord fields on save. Much easier than writing the same before_save on every model.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "activerecord"
  spec.add_dependency "sanitize"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
