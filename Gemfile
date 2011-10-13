source 'http://rubygems.org'

gem 'rails', '3.1.0'

gem 'sqlite3'

gem 'inherited_resources'

gem "meta_search"
gem "truncate_html"

gem 'sorcery'
gem 'cancan'
# gem 'will_paginate'

# Gems used only for assets and not required
# in production environments by default.
 gem 'sass-rails', "  ~> 3.1.0"
group :assets do
  gem 'coffee-rails', "~> 3.1.0"
  gem 'uglifier'
end

gem 'jquery-rails'


# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# group :development, :test do 
# 	if RUBY_VERSION =~ /1.9/ 
# 		gem 'ruby-debug19' 
# 	else 
# 		gem 'ruby-debug' 
# 	end 
# end

gem "mocha", :group => :test

group :test do
  # Pretty printed test output
  gem 'turn', :require => false
end

group :production do
	gem 'thin'
	gem 'pg'
end

