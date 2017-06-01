source 'https://rubygems.org'

gem 'active_model_serializers', '~> 0.10.0'
gem 'bcrypt', '~> 3.1.7'
gem 'httparty', '~> 0.13.7'
gem 'json'
gem 'passenger', '>= 5.0.25', require: 'phusion_passenger/rack_handler'
gem 'pg'
gem 'rack-cors'
gem 'rails', '~> 5.0.2'
gem 'rails-i18n', '~> 5.0.0'
gem 'rails_param'
gem 'swagger-blocks'
gem 'yard'

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'dotenv-rails'
  gem 'haml-lint', require: false
  gem 'rspec-rails', '~> 3.5'
  gem 'rubocop', '~> 0.48.1', require: false
end

group :development do
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'database_cleaner'
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'shoulda-matchers', git:
    'https://github.com/thoughtbot/shoulda-matchers.git', branch: 'rails-5'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
