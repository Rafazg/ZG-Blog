
# exit on error

set -o errexit

bundle install
./bin/rails assets:precompile
./bin/rails assets:clean
bundle exec rake db:migrate
