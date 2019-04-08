# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.2'

gem 'pg', '>= 0.18', '< 2.0'
gem 'rails', github: 'rails/rails'

gem 'bootsnap', '>= 1.1.0', require: false
gem 'puma', '~> 3.11'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'committee'
  gem 'committee-rails'
  gem 'factory_bot_rails'
  gem 'pry-byebug'
  gem 'pry-doc'
  gem 'pry-rails'
  gem 'pry-stack_explorer'
  gem 'rspec-rails'
end

group :development do
  gem 'annotate'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'prmd'
  gem 'rubocop', require: false
  gem 'rubocop-performance'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'rspec-json_matchers'
end
