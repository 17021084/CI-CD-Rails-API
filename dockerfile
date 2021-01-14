FROM ruby:2.7.1

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs && gem install bundler

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY Gemfile /Gemfile

COPY Gemfile.lock ./Gemfile.lock

RUN bundle install

RUN bundle update

COPY . .

EXPOSE 3030



# Add environment variables
ENV RAILS_ENV='production'
ENV DATABASE_USERNAME='root'
ENV DATABASE_PASSWORD='12345678'
ENV DATABASE_SOCKET='/tmp/mysql.sock'

# Start the main process.
CMD ["rails", "s", "-b", "0.0.0.0", "-p", "3030"]