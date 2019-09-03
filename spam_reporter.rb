require 'haml'
require 'pry'
require 'sinatra'
require 'sinatra/reloader'

class SpamReporter < Sinatra::Application
  configure :development do
    register Sinatra::Reloader
  end

  get '/spam_dashboard' do
    haml :spam_dashboard
  end
end
