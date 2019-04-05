FROM ruby:2.6.2-alpine
ENV BUNDLE_JOBS=4 \
    APP_DIR=/work
WORKDIR $APP_DIR
COPY Gemfile $APP_DIR
COPY Gemfile.lock $APP_DIR
RUN apk update && \
    apk upgrade && \
    apk add --update --no-cache --virtual=.build-dependencies \
      make \
#      gcc \
#      g++ \
      build-base \
#      curl-dev \
#      linux-headers \
      libxml2-dev \
      libxslt-dev && \
#      postgresql-dev \
#      ruby-dev \
#      yaml-dev \
#      zlib-dev && \
    apk add --update --no-cache \
      bash \
      git \
      openssh \
      postgresql \
#      ruby-json \
      tzdata \
      yaml && \
    gem install bundler -v 2.0.1 && bundle install --path=vendor/bundle && \
    mkdir -p $APP_DIR
#RUN apk del .build-dependencies
COPY . $APP_DIR
