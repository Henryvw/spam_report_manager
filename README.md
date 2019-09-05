# Spam Report Manager
### A Sinatra + ActiveRecord[6.0] app
An admin dashboard to manage (view, block and resolve - i.e. remove from the dashboard view) messages reported as SPAM by our users.

<img align="center" src="https://github.com/Henryvw/spam_report_manager/blob/master/public/spam_dashboard_preview.png" alt="Spam Dashboard Preview"/>

## Run the app locally
1. `bundle` within the folder to get all needed gems
2. `rake db:create` - Create the PostGres database. 
3. Double check that the PostGres database user and password, as specified in `spam_database.yml`, have sufficient privileges for creating and editing the database.
4. Load the database with the example spam reports: `psql -U manager spam_databank < db/spam_import.pgsql`
4. `rake db:migrate`
5. `rackup -p 4567` to launch the app. Visit `http://localhost:4567/spam_dashboard` to experience and use the admin. Block and Resolve Spam Reports as your heart desires.

## Run the RSpec test suite
1. `rake db:test:prepare`
2. If you have the development instance running, the `Selenium` browser tests will interact with that instance and its database. Please stop the development instance before running the test suite. 
2. `RACK_ENV=test rspec spec/spam_reporter_spec.rb`
