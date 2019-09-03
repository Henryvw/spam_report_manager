require 'active_record'
require './spam_reporter.rb'

include ActiveRecord::Tasks

root = File.expand_path '..', __FILE__
DatabaseTasks.env = ENV['ENV'] || 'development'
DatabaseTasks.database_configuration = YAML.load(File.read(File.join(root, 'db/spam_database.yml')))
DatabaseTasks.db_dir = File.join root, 'db'
DatabaseTasks.migrations_paths = [File.join(root, 'db/migrate')]
DatabaseTasks.root = root

task :environment do
  ActiveRecord::Base.configurations = DatabaseTasks.database_configuration
  ActiveRecord::Base.establish_connection DatabaseTasks.env.to_sym
end

load 'active_record/railties/databases.rake'
