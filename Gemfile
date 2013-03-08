source 'http://rubygems.org'

gem 'rails', '3.1.0'

gem 'inherited_resources'

gem "meta_search"
gem "truncate_html"

gem 'ckeditor', :git => 'https://github.com/fusco/ckeditor.git'
gem 'paperclip'

gem 'sorcery'
gem 'cancan'

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

group :development do 
  gem "debugger"
# 	if RUBY_VERSION =~ /1.9/ 
# 		gem 'ruby-debug19' 
# 	else 
# 		gem 'ruby-debug' 
# 	end 
end

#gem 'sqlite3', :group => :development

gem "mocha", :group => :test

group :test do
  # Pretty printed test output
  gem 'turn', :require => false
end

group :production do
	gem 'thin'
	gem 'execjs'
	gem 'therubyracer'
	gem 'mysql2'
end

