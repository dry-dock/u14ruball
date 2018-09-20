#!/bin/bash -e

export JRUBY_VERSION=1.7.27
echo "================= Installing JRuby "$JRUBY_VERSION"  ==================="
rvm requirements
rvm install jruby-"$JRUBY_VERSION"
rvm use jruby-"$JRUBY_VERSION"

# Install ruby gems
gem install bundler
