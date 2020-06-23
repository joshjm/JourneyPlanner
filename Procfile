web: bundle exec puma -t 5:5 -p ${PORT:-3000} -e ${RACK_ENV:-development}
release: rake db:drop
release: rake db:create
release: rake db:migrate
release: rake db:seed



