FROM ruby:3.1.2-alpine3.15
WORKDIR /usr/src/app
COPY . .
RUN apk add --update --no-cache ruby-dev build-base && \
    bundle install && \
    apk del ruby-dev build-base
CMD ["bundle", "exec", "rackup", "-o", "0.0.0.0"]
