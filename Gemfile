# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'

gem 'pg', '>= 0.18', '< 2.0'
gem 'rails', '~> 6.1.3'

gem 'bootsnap'
gem 'puma'

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
  gem 'listen'
  gem 'prmd'
  gem 'rubocop', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec', require: false
  gem 'spring'
  gem 'spring-watcher-listen'
end

group :test do
  gem 'rspec-json_matchers'
end
