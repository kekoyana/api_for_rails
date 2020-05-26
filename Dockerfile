FROM ruby:2.7.1-alpine
ENV BUNDLE_JOBS=4 \
    BUNDLE_PATH=/bundle \
    APP_DIR=/work
WORKDIR $APP_DIR
COPY Gemfile $APP_DIR
COPY Gemfile.lock $APP_DIR
RUN apk update && \
    apk upgrade && \
    apk add --update --no-cache --virtual=.build-dependencies \
      make \
      build-base \
      libxml2-dev \
      libxslt-dev  \
      postgresql-dev && \
    apk add --update --no-cache \
      bash \
      git \
      openssh \
      postgresql \
      tzdata \
      yaml && \
    gem install bundler -v 2.1.4 && bundle install --path=vendor/bundle && \
    mkdir -p $APP_DIR
#RUN apk del .build-dependencies
COPY . $APP_DIR
