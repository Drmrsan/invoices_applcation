source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.1'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'

gem 'jquery-rails'
gem 'jbuilder', '~> 2.5'
gem 'devise'
gem 'haml', '~> 4.0.5'
gem 'bootstrap-sass'
gem "font-awesome-rails"
gem 'simple_form'
gem 'faker'
gem 'jquery-datatables-rails', '~> 3.4.0'
gem 'country_select'
gem "cocoon"
gem 'wicked_pdf'
gem 'wkhtmltopdf-binary'
gem 'chartkick'
gem 'groupdate'


group :development, :test do
  gem 'byebug', platform: :mri
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
