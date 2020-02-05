# frozen_string_literal: true

source 'https://rubygems.org'
ruby '2.7.0'

gem 'sinatra'
gem 'slim'
gem 'thin'

group :test do
  gem 'rack-test'
  gem 'rspec'
  gem 'rspec_junit_formatter'
  gem 'simplecov', require: false
  gem 'simplecov-cobertura'
end

group :test, :development do
  gem 'rake'
  gem 'rubocop'
  gem 'rubocop-checkstyle_formatter', require: false
  gem 'rubocop-github'
end
