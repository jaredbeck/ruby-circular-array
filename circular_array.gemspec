# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'circular_array'

Gem::Specification.new do |spec|
  spec.name          = 'circular_array'
  spec.version       = CircularArray::VERSION
  spec.authors       = ['Volodya Sveredyuk']
  spec.email         = ['sveredyuk@gmail.com']

  spec.summary       = 'CircularArray'
  spec.description   = 'Endless array'
  spec.homepage      = 'https://github.com/sveredyuk/ruby-circular-array'
  spec.license       = 'MIT'

  spec.metadata['allowed_push_host'] = 'https://rubygems.org'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/sveredyuk/ruby-circular-array'
  spec.metadata['changelog_uri'] = 'https://github.com/sveredyuk/ruby-circular-array/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'guard-rspec', '~> 4.7.3'
  spec.add_development_dependency 'pry', '~> 0.12'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop', '~> 0.74'
end
