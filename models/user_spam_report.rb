require 'active_record'

# Not sure whether I need this database connector... but leaving it in...
DB_ENV ||= 'development'
connection_details = YAML::load(File.open('db/spam_database.yml'))
ActiveRecord::Base.establish_connection(connection_details[DB_ENV])

class UserSpamReport < ActiveRecord::Base
end
