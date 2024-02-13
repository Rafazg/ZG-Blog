
# exit on error

set -o errexit

bundle install
./bin/rails assets:precompile
./bin/rails assets:clean
bundle exec rake db:migrate

psql -U mysite -d mysite_6737 -f users_202402131143.sql