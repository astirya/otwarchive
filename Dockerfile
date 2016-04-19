FROM ruby:2.0.0
RUN apt-get update -qq && apt-get install -y build-essential mysql-client vim libmysqlclient-dev libxml2-dev libxslt-dev
RUN mkdir -p /var/www/otwarchive
WORKDIR /var/www/otwarchive
ADD Gemfile /var/www/otwarchive
ADD Gemfile.lock /var/www/otwarchive
RUN bundle install
ADD . /var/www/otwarchive
