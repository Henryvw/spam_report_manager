require File.expand_path('spam_report_manager', File.dirname(__FILE__))
require File.expand_path('models/user_spam_report.rb', File.dirname(__FILE__))
#require File.expand_path('views/spam_dashboard.haml', File.dirname(__FILE__))

run SpamReportManager
