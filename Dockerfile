FROM ruby:3.0.6-alpine AS base
FROM base AS gems
RUN apk add --update build-base
COPY Gemfile Gemfile.lock ./
RUN bundle install
FROM base
WORKDIR /usr/src/app
COPY --from=gems /usr/local/bundle/ /usr/local/bundle/
COPY . .
CMD ["./server.rb"]