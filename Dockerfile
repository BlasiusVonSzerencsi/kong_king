FROM ruby:2.6.1

RUN gem update --system
RUN gem install bundler

RUN mkdir /work

WORKDIR /work

COPY ./ /work
RUN rm -f /work/Gemfile.lock

RUN bundle install
