require 'haml'
require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require_relative 'models/user_spam_report.rb'

class SpamReportManager < Sinatra::Application
  configure :development, :test do
    register Sinatra::Reloader
  end

  get '/spam_dashboard' do
    @open_spam_reports = UserSpamReport.where(state: "OPEN")
    haml :spam_dashboard
  end

  put '/reports/:id' do
    report = UserSpamReport.find(id = params['id'])
    report.state = "CLOSED"
    report.save
    redirect to '/spam_dashboard'
  end

  put '/block/:id' do
    report = UserSpamReport.find(id = params['id'])
    report.blocked = true
    report.save
    redirect to '/spam_dashboard'
  end
end
