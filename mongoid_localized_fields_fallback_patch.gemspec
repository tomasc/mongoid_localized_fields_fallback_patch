lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "mongoid_localized_fields_fallback_patch/version"

Gem::Specification.new do |spec|
  spec.name          = "mongoid_localized_fields_fallback_patch"
  spec.version       = MongoidLocalizedFieldsFallbackPatch::VERSION
  spec.authors       = ["Tomas Celizna", "Asger Behncke Jacobsen"]
  spec.email         = ["tomas.celizna@gmail.com", "a@asgerbehnckejacobsen.dk"]

  spec.summary       = %q{A patch for mongoid localized fields, making it fallback through locale values that are not only `:nil?` but also `:blank?`.}
  spec.homepage      = "https://github.com/tomasc/mongoid_localized_fields_fallback_patch"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "mongoid", ">= 6.0", "< 8.0"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "coveralls"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-minitest"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "rake", "~> 10.0"
end
