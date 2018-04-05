require_relative 'lib/ifttt/version'

Gem::Specification.new do |spec|
  spec.name          = 'ifttt-rails'
  spec.version       = IFTTT::VERSION
  spec.authors       = ['Dale Stevens', 'Eric Lundby']
  spec.email         = ['dale@twilightcoders.net', 'eric@twilightcoders.net']

  spec.summary       = 'Integrate IFTTT Support into your Rails App'
  spec.description   = "Integrate IFTTT Support into your Rails App"
  spec.homepage      = "https://github.com/TwilightCoders/ifttt"
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org'
  else
    raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  spec.files         = Dir['CHANGELOG.md', 'README.md', 'LICENSE', 'lib/**/*']
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib', 'spec']

  rails_versions = ['>= 4.1', '< 6']
  spec.required_ruby_version = '>= 2.2'

  spec.add_runtime_dependency 'rails', rails_versions
  # spec.add_runtime_dependency 'railties', rails_versions

  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency 'pry-byebug', '~> 3'
  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake', '~> 12.0'
  spec.add_development_dependency 'combustion', '~> 0.7'

end
