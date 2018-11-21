#!/bin/bash -e
source /usr/local/rvm/scripts/rvm

echo "rvm use jruby-9.2.3.0"
rvm use jruby-9.2.3.0
printf "\

echo "rvm use 2.3.8"
rvm use 2.3.8
printf "\n"

echo "rvm use 2.4.5"
rvm use 2.4.5
printf "\n"

echo "rvm use 2.5.3"
rvm use 2.5.3
printf "\n"
