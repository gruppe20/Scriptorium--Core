source 'http://rubygems.org'

gem 'rails', '3.1.3'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'
gem 'execjs'
gem 'therubyracer'
gem 'devise'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.1.5'
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# Active admin
gem 'activeadmin'
gem "meta_search",    '>= 1.1.0.pre'

group :test, :development do
	gem 'database_cleaner'
	gem 'rspec-rails'
	gem 'capybara'
end

group :test, do
  gem 'cucumber-rails'
end

group :test do
  # Pretty printed test output
  gem 'turn', '0.8.2', :require => false
end

#Mongrel is needed to fix a problem with WEBrick
gem 'mongrel', '1.2.0.pre2', :group => :development


# Auth module
gem 'auth', :path => 'lib/scmodules/auth'

# Archive module
gem 'archive', :path => 'lib/scmodules/archive'

#Feed module
gem 'feed', :path => 'lib/scmodules/feed'
