# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem "nokogiri", ">= 1.13.9"
gem "pg", "~> 1.4.4"
gem "puma", "~> 6.0.0"
gem "rails", "~> 5.2.8.1"
gem "sass-rails", "~> 5.1.0"
gem "uglifier", ">= 4.2.0"

gem "jbuilder", "~> 2.11.5"

group :development do
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "web-console", ">= 3.3.0"
end

group :rubocop do
  gem "rubocop", ">= 1.38.0", require: false
  gem "rubocop-minitest", require: false
  gem "rubocop-packaging", require: false
  gem "rubocop-performance", require: false
  gem "rubocop-rails", require: false
end

gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]

gem "devise", github: "plataformatec/devise"
gem "friendly_id"
gem "acts-as-taggable-on"
gem "invisible_captcha"
gem "dalli"
gem "redis", "~> 5.0.5"
gem "kt-paperclip", "~> 7.1.1"
