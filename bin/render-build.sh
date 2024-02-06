#!/usr/bin/env bash
chmod u+x bin/rails
# exit on error
set -o errexit

bundle install
./bin/rails assets:precompile
./bin/rails assets:clean

