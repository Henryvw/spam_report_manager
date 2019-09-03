# Keeping it simple for this small project: including my database config, my model and my migration all in one file

require 'activerecord'

ActiveRecord::Base.establish_connection(
  adapter: 'postgres'
  host: 'host'
  username: 'user'
  password: 'password'
  database: 'user-reports'
)

ActiveRecord::Migration.create_table :user_reports do |t|
  t.string :name
end

class UserReports < ActiveRecord::Base
end


