source 'https://rubygems.org'

ruby '2.0.0'

gem 'rails'
gem 'jquery-rails'
gem 'simple_form'
gem 'thin'
gem 'anjlab-bootstrap-rails', require: 'bootstrap-rails', github: 'anjlab/bootstrap-rails'
gem 'bootstrap-datepicker-rails'
gem 'sorcery'
gem 'jquery-datatables-rails'

group :assets do
  gem 'less-rails'
  gem 'sass-rails'
  gem 'coffee-rails'
  gem 'uglifier'
  gem 'therubyracer', :platforms => :ruby
end

group :development, :test do
  gem 'sqlite3'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end
