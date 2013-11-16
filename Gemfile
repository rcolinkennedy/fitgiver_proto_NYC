source 'https://rubygems.org'
ruby '2.0.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.1'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

# Add Foundation Here
gem 'compass-rails' # you need this or you get an err
gem 'zurb-foundation', '~> 4.0.0'

# Use ActiveModel has_secure_password
gem 'bcrypt-ruby', '3.1.2'

# Implement Devise with OmniAuth for Users and Authentication
gem 'devise'
gem 'omniauth-twitter'
#gem 'omniauth-runkeeper'
gem 'twitter'
# Fix Devise to work with Rails 4.0+
gem 'protected_attributes'
# Use figaro to stash keys for dev and deployment
gem 'figaro', '~> 0.7.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Set up dev group
group :development, :test do
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3', '1.3.8'

  # Use Nifty Generators
  # More info at https://github.com/ryanb/nifty-generators
  gem 'nifty-generators'
  # Add RSpec for rails
  gem 'rspec-rails', '2.13.1'

  # Add Guard to automate testing
  gem 'guard-rspec', '2.5.0'
  # Add Spork to speed up testing with Guard
  gem 'spork-rails', '4.0.0'
  gem 'guard-spork', '1.5.0'
  gem 'childprocess', '0.3.9'
end

group :test do
  # Use capybara for simulating user interactions
  gem 'capybara', '2.1.0'
    # capybara has dependencies on selenium
  gem 'selenium-webdriver', '2.35.1'

  # Use FactoryGirl for factories
  gem 'factory_girl_rails', '4.2.1'
end

#add prod group
group :production do
  # Use PostgreSQL for deployment to Heroku
  gem 'pg', '~>0.17.0'

  #Enables serving assets in production and setting your logger to standard out
  gem 'rails_12factor', '0.0.2'
end

gem "mocha", group: :test