FROM ruby:3.1.3-bullseye

LABEL maintainer="Marcelo Soares Souza <marcelo@agroecologymap.org>"
RUN apt-get update && apt-get install build-essential nodejs libpq-dev git imagemagick tzdata -y
RUN mkdir /app
WORKDIR /app
COPY Gemfile Gemfile.lock ./
RUN gem install bundler:2.3.26
RUN bundle install
COPY . .
RUN bundle exec rails assets:precompile
CMD puma -C config/puma.rb
