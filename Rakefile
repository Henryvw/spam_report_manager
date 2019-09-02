require 'active_record'
require './spam_reporter.rb'

include ActiveRecord::Tasks

DatabaseTasks.database_configuration = YAML.load_file('db/spam_database.yml')
DatabaseTasks.db_dir = 'db'

DatabaseTasks.create_current('development')
