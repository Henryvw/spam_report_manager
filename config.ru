require File.expand_path('spam_reporter', File.dirname(__FILE__))
require File.expand_path('models/user_reports.rb', File.dirname(__FILE__))
#require File.expand_path('views/spam_dashboard.haml', File.dirname(__FILE__))

run SpamReporter
