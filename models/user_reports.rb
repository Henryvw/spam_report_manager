# Keeping it simple for this small project: including my database config, my model and my migration all in one file

require 'active_record'
require 'pg'

# Not sure whether I need this database connector... but leaving it in...
DB_ENV ||= 'development'
connection_details = YAML::load(File.open('db/spam_database.yml'))
ActiveRecord::Base.establish_connection(connection_details[DB_ENV])

class UserReports < ActiveRecord::Base
end
