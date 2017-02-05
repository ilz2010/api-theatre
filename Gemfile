source 'https://rubygems.org'

git_source(:github) do |repo_name|
    repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
    "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.1'

group :production do
    # Use mysql as the database for Active Record
    gem 'mysql2', '>= 0.3.18', '< 0.5'
end

group :development, :test do
    gem 'sqlite3'
end

# Use Puma as the app server
gem 'puma', '~> 3.0'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem 'rack-cors'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

#
#
# Own gem includes
#
#

# QuickFix: hide warnings from console
gem 'thor', '0.19.1'

# Beautify IRB console
gem 'hirb'

# Authentication
gem 'devise'
gem 'jwt'

# Markdown render
gem 'redcarpet'

# Safe deletion of models (deleted_at)
gem 'paranoia', '~> 2.2'

# For heroku
ruby '2.2.6'