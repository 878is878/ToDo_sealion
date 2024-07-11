FROM ruby:3.2.0
ENV APP /WithTODO
ENV LANG C.UTF-8
ENV TZ Asia/Tokyo
RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash -
RUN apt update -qq \
 && apt install -y build-essential mariadb-client nodejs \
 && npm install --global yarn && apt install -y vim
WORKDIR $APP
COPY Gemfile $APP/Gemfile
COPY Gemfile.lock $APP/Gemfile.lock
RUN bundle install
CMD ["bash", "-c", "rm -f tmp/pids/server.pid && PORT=${PORT:-3000} ./bin/dev"]