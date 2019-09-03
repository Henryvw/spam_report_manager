require 'active_record'

DB_ENV = ENV['RACK_ENV'] || 'development'
connection_details = YAML::load(File.open('db/spam_database.yml'))
ActiveRecord::Base.establish_connection(connection_details[DB_ENV])

class UserSpamReport < ActiveRecord::Base
end
