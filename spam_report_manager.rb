require 'haml'
require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require_relative 'models/user_spam_report.rb'

class SpamReportManager < Sinatra::Application
  configure :development do
    register Sinatra::Reloader
  end

  get '/spam_dashboard' do
    p UserSpamReport.all
    #haml :spam_dashboard
  end
end
