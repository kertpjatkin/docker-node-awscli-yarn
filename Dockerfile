FROM node:6

MAINTAINER Richard <hello@noxan.net>

# Install yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb http://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update
RUN apt-get install yarn

# Install ember-cli and bower
RUN yarn global add ember-cli bower
