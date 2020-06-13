#run the migration
bundle exec rake db:migrate
bundle exec rake db:seed
# Compile the assets
bundle exec rake assets:precompile
# Start the server
bundle exec rails server