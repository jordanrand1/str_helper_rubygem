
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "str_helpers_jrand/version"

Gem::Specification.new do |spec|
  spec.name          = "str_helpers_jrand"
  spec.version       = StrHelpersJrand::VERSION
  spec.authors       = ["Jordan Rand"]
  spec.email         = ["jorrand@gmail.com"]

  spec.summary       = "String helper"
  spec.homepage      = "https://github.com/jordanrand1/str_helper_rubygem"
  spec.license       = "MIT"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
