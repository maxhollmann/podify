source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'

gem 'dotenv-rails', "~> 2.7", groups: [:development, :test], require: 'dotenv/rails-now'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0', '>= 6.0.2.2'
# Use Puma as the app server
gem 'puma', '~> 5.3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 6.0'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 4.2'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.10'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

gem 'pg', "~> 1.2"
gem 'sequel-rails', "~> 1.1"

gem 'lograge', "~> 0.11"
gem 'logstash-event', "~> 1.2"
gem 'sentry-raven', "~> 3.0"

gem 'sidekiq', "~> 6.0"
gem 'sidekiq-scheduler', "~> 3.0"

gem 'graphql', "~> 1.10"
gem 'graphiql-rails', "~> 1.7"

gem 'dry-rails', git: 'https://github.com/dry-rb/dry-rails.git', branch: :master
gem 'dry-monads', "~> 1.3"
gem 'dry-view', "~> 0.7"
gem 'dry-cli', "~> 0.6"
gem 'dry-events', "~> 0.2"
gem 'dry-effects', "~> 0.1"

gem 'devise', "~> 4.7"
gem 'sequel-devise', "~> 0.0"
gem 'devise-bootstrap-views', '~> 1.1'
gem 'devise-token_authenticatable', "~> 1.1"

gem 'shrine', '~> 3.2'

gem 'ytdl', "~> 0.0"

gem 'slim-rails', "~> 3.2"
gem 'builder', "~> 3.2"
gem 'mimemagic', "~> 0.3"

gem 'amazing_print', "~> 1.2"

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', "~> 11.1", platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry-rails', "~> 0.3"

  gem 'rspec', "~> 3.9"
  gem 'rspec-rails', "~> 4.0"
  gem 'factory_bot_rails', "~> 5.2"
end

group :development do
  # Preview mail in the browser instead of sending
  gem 'letter_opener', "~> 1.7"

  # Debug I18n keys
  # gem 'i18n-debug'

  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '~> 4.0'
  gem 'listen', '~> 3.1', '< 3.2'
  gem 'better_errors', "~> 2.7"
  gem 'binding_of_caller', "~> 0.8"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
