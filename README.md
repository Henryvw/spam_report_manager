# Spam Report Manager
An admin dashboard to manage (view, block and resolve - i.e. remove from the list) messages reported as spam by our users.

## Use the app locally

1. `bundle` within the folder to get all needed gems
2. Create PostGres database user and password, as specified in `spam_database.yml`
3. `rake db:create` and `rake db:migrate` to set up the database
4. `rackup -p 4567` to launch the app
