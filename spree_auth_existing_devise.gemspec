# encoding: UTF-8

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_auth_existing_devise'
  s.version     = '1.0.0'
  s.summary     = 'Provides authentication and authorization services for use with Spree by an existing Devise installation.'
  s.description = 'Optional dependency for Spree'

  s.required_ruby_version = '>= 1.9.3'
  s.author      = 'Derek Kastner'
  s.email       = 'dkastner@gmail.com'

  s.files        = Dir['LICENSE', 'README.md', 'app/**/*', 'config/**/*', 'lib/**/*', 'db/**/*']
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '~> 1.3.2'
  s.add_dependency 'cancan'
end
