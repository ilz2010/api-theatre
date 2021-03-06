source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.1'

# Use Puma as the app server
gem 'puma', '~> 3.0'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

#
#
# Own gem includes
#
#

group :production do
  # Use mysql as the database for Active Record
  gem 'mysql2', '>= 0.3.18', '< 0.5'

  # Image storage
  gem 'cloudinary'
end

group :development, :test do
  gem 'sqlite3'

  # Beautify IRB console
  gem 'hirb'
end

# QuickFix: hide warnings from console
gem 'thor', '0.19.1'

# Authentication
gem 'devise'
gem 'jwt'

# Markdown render
gem 'redcarpet'

# Safe deletion of models (deleted_at)
gem 'paranoia', '~> 2.2'

# Hall rendering
gem 'gd2-ffij', git: 'https://github.com/dark-panda/gd2-ffij.git'

# Seed dumping
gem 'seed_dump'

# For Slim templates
gem 'slim'
gem 'slim-rails'

# PDF render
gem 'pdfkit'

# QR Code creation
gem 'rqrcode'

# For heroku
ruby '2.4.0'
