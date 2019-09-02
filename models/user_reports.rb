# Keeping it simple for this small project: including my database config, my model and my migration all in one file

require 'active_record'
require 'pg'

ActiveRecord::Base.establish_connection(
  adapter: 'postgresql',
  host: 'localhost',
  username: 'user',
  password: 'password',
  database: 'spam_databank',
  port: '6666'
)


class UserReports < ActiveRecord::Base
end


