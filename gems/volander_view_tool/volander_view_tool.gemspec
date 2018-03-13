
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "volander_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "volander_view_tool"
  spec.version       = VolanderViewTool::VERSION
  spec.authors       = ["viktharien"]
  spec.email         = ["viktharien@zoho.com"]

  spec.summary       = %q{TODO: For One and For All.}
  spec.description   = %q{TODO: For One and For All.For One and For All.For One and For All.For One and For All.}
  spec.homepage      = "TODO: foroneandforall.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
