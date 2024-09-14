# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'roulette-wheel-selection/version'

Gem::Specification.new do |spec|
  spec.name          = "roulette-wheel-selection"
  spec.version       = RouletteWheelSelection::VERSION
  spec.authors       = ["khiav reoy"]
  spec.email         = ["khiav223577@gmail.com"]

  spec.summary       = %q{Provide an algorithm allowing you to do weighted sampling.}
  spec.description   = %q{Provide an algorithm allowing you to do weighted sampling.}
  spec.homepage      = "https://github.com/khiav223577/roulette-wheel-selection"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  #if spec.respond_to?(:metadata)
  #  spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  #else
  #  raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  #end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.metadata    = {
    'homepage_uri'      => 'https://github.com/khiav223577/roulette-wheel-selection',
    'changelog_uri'     => 'https://github.com/khiav223577/roulette-wheel-selection/blob/master/ruby/CHANGELOG.md',
    'source_code_uri'   => 'https://github.com/khiav223577/roulette-wheel-selection',
    'documentation_uri' => 'http://www.rubydoc.info/gems/roulette-wheel-selection',
    'bug_tracker_uri'   => 'https://github.com/khiav223577/roulette-wheel-selection/issues',
  }

  spec.add_development_dependency 'bundler', '>= 1.17', '< 3.x'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'minitest'
end
