source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.4'

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem 'rails', '~> 7.0.3'

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem 'sprockets-rails'

# Use postgresql as the database for Active Record
gem 'pg', '1.3.5'

# Use the Puma web server [https://github.com/puma/puma]
gem 'puma', '~> 5.0'

# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem 'importmap-rails'

#Use inline svg for styling svg [https://github.com/jamesmartin/inline_svg]
gem 'inline_svg', '~> 1.8'

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem 'turbo-rails'

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem 'stimulus-rails'

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem 'jbuilder'

# Use Redis adapter to run Action Cable in production
gem 'redis', '~> 4.0'

# bootstrap to disign the user interface
# Note: there is no jumbotron in this version
gem 'bootstrap', '~> 5.1.3'

gem 'slick_rails'

#Using Omniauth for Authentication
gem 'omniauth-facebook', '~> 9.0'
gem 'omniauth-google-oauth2', '~> 1.0', '>= 1.0.1'
gem 'omniauth-rails_csrf_protection', '~> 1.0', '>= 1.0.1'
gem 'open-uri'

gem 'jquery-rails'

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"
gem 'devise', '~> 4.8', '>= 4.8.1'
# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

gem 'faker'

gem 'factory_bot_rails', '~> 6.2'
gem 'fakeredis'
gem 'kaminari'
gem 'pry'
gem 'pry-byebug'
gem 'pry-rails'
gem 'pry-rescue'

# Use Sass to process CSS
# gem "sassc-rails"

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
gem 'image_processing', '~> 1.2'

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'brakeman', require: false
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'dotenv-rails'
  gem 'rspec-rails'
  gem 'rubocop', '~> 1.27.0', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec', require: false
end

group :test do
  gem 'rails-controller-testing'
  gem 'rspec'
  gem 'rspec_junit_formatter'
  gem 'shoulda-matchers', '~> 5.1'
  gem 'stub_env'
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem 'web-console'

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  gem 'spring' # auto-reload lib & gems
  gem 'spring-commands-rspec', require: false
  gem 'spring-commands-rubocop', require: false
end

gem 'rolify'

gem 'webpacker', '~> 5.4'

gem 'mini_racer', platforms: :ruby
gem 'react_on_rails', '= 12.0.4'
