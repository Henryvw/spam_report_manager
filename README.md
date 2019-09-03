# Spam Report Manager
An admin dashboard to manage (view, block and resolve - i.e. remove from the dashboard view) messages reported as SPAM by our users.

<img align="center" src="https://github.com/Henryvw/spam_report_manager/blob/master/public/spam_dashboard_preview.png" alt="Spam Dashboard Preview" width="600" />

## Run the app locally
1. `bundle` within the folder to get all needed gems
2. Create PostGres database user and password, as specified in `spam_database.yml`
3. Load the database with the example spam reports: `psql -U manager spam_databank < db/new_spam_export.pgsql`
4. `rake db:create` and `rake db:migrate` to set up the database
5. `rackup -p 4567` to launch the app

## Run the RSpec test suite
1. `rake db:test:prepare`
2. `RACK_ENV=test rspec spec/spam_reporter_spec.rb`
