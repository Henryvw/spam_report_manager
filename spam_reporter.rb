require 'haml'
require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

class SpamReporter < Sinatra::Application
  configure :development do
    register Sinatra::Reloader
  end

  get '/spam_dashboard' do
    p UserReport.all
    #haml :spam_dashboard
  end
end
