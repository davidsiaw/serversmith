# frozen_string_literal: true

require_relative 'lib/serversmith/version'

Gem::Specification.new do |spec|
  spec.name          = 'serversmith'
  spec.version       = Serversmith::VERSION
  spec.authors       = ['David Siaw']
  spec.email         = ['874280+davidsiaw@users.noreply.github.com']

  spec.summary       = 'Serversmith summary'
  spec.description   = 'Serversmith description'
  spec.homepage      = 'https://github.com/davidsiaw/serversmith'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  spec.metadata['allowed_push_host'] = 'https://rubygems.org'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/davidsiaw/serversmith'
  spec.metadata['changelog_uri'] = 'https://github.com/davidsiaw/serversmith'

  spec.files         = Dir['{exe,data,lib}/**/*'] + %w[Gemfile serversmith.gemspec]
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'activesupport'
  spec.add_dependency 'erubis'
  spec.add_dependency 'method_source'
  spec.add_dependency 'chino'

  spec.add_development_dependency 'rake', '~> 12.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop'
end
