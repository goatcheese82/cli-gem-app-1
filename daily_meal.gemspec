# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "daily_meal/version"

Gem::Specification.new do |spec|
  spec.name          = "daily_meal"
  spec.version       = DailyMeal::VERSION
  spec.authors       = ["goatcheese82"]
  spec.email         = ["nonsquishy@gmail.com"]

  spec.summary       = %q{Gives a list of recipes.}
  spec.description   = %q{This Gem allows users to find a random recipe from SeriousEats.com.}
  spec.homepage      = "https://github.com/goatcheese82/cli-gem-app-1"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
end
