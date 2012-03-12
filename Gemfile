source 'https://rubygems.org'

gem 'rails', '3.2.2'
gem 'sqlite3'
gem 'will_paginate', '~> 3.0'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  gem 'twitter-bootstrap-rails'
  gem 'codemirror-rails'
  gem 'google-code-prettify-rails'
end

gem 'jquery-rails'

group :production do
	# I've added it because heroku told me so
	gem 'pg'
end
group :development do
  gem 'annotate'
end

group :test do
  gem 'turn'
  gem 'minitest'
  gem 'minitest-reporters', '>= 0.5.0'
end
