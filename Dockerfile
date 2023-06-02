FROM ruby:3.0.6-alpine
WORKDIR /usr/src/app
COPY Gemfile Gemfile.lock ./
RUN bundle install
COPY . .
CMD ["ruby server.rb"]