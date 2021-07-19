FROM ruby:2.7

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client python3 python3-pip ffmpeg

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update && apt-get install -y yarn


RUN mkdir /app
WORKDIR /app

COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN bundle config set clean true && \
    bundle config set deployment true && \
    bundle config set no-cache true && \
    bundle config set without 'development test' && \
    bundle install

COPY package.json /app/package.json
COPY yarn.lock /app/yarn.lock
RUN yarn install --production

COPY . /app

COPY docker/entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

ENV PATH="/app/bin:${PATH}"
ENV RAILS_ENV=production

# RUN rake assets:precompile

RUN pip3 install -U youtube-dl
