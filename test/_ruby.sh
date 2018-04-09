#!/bin/bash -e
source /usr/local/rvm/scripts/rvm

echo "rvm use jruby-9.1.16"
rvm use jruby-9.1.16
printf "\

echo "rvm use jruby-1.7.27"
rvm use jruby-1.7.27
printf "\n"

echo "rvm use 2.2.8"
rvm use 2.2.8
printf "\n"

echo "rvm use 2.3.6"
rvm use 2.3.6
printf "\n"

echo "rvm use 2.4.3"
rvm use 2.4.3
printf "\n"

echo "rvm use 2.5.0"
rvm use 2.5.0
printf "\n"
