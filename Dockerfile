#############################################################################
# Once app code has been generated
#

FROM ruby:3.1.4-bullseye

WORKDIR /failfaster

# Copy just the Gemfile and Gemfile.lock
COPY Gemfile Gemfile.lock ./

# Install dependencies
RUN bundle install

COPY . .
#
###########################################################################


###########################################################################
# Initial setup of app
#
# FROM ruby:3.1.4-bullseye

# COPY . /failfaster
# WORKDIR /failfaster
# Install Rails
# RUN gem install rails -v 7.0.3

# To generate your trimmed down app:
# rails new myapp --skip-active-record --skip-action-mailer --skip-action-mailbox --skip-action-text --skip-action-cable --skip-sprockets --skip-spring --skip-listen --skip-javascript --skip-turbolinks --skip-test --skip-system-test --skip-bootsnap --skip-webpack-install

# and in Docker
# docker run --rm -v $(pwd):/failfaster rails_app rails new . --skip-active-record --skip-action-mailer --skip-action-mailbox --skip-action-text --skip-action-cable --skip-sprockets --skip-spring --skip-listen --skip-javascript --skip-turbolinks --skip-bootsnap --skip-webpack-install
###########################################################################
