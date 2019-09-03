require 'rspec'
require_relative '../spam_reporter.rb'
require 'rack/test'

describe SpamReporter do

  include Rack::Test::Methods
  
  def app
    SpamReporter.new
  end

  context 'spam team dashboard' do
    it 'retrieves the dashboard homepage' do
      get '/spam_dashboard' do
        expect(last_response).to be_ok
      end
    end

    it 'shows a list of reported messages' do
      get '/spam_dashboard' do
        expect(last_response.body).to include('ID', 'Type', 'Message')
      end
    end

    it 'shows the spam Type on a message' do
    end

    it 'shows the spam ID on a message' do
    end

    it 'shows the spam state on a message' do
    end

    it 'shows the spam message itself on a message' do
    end
  end
 
  context 'Block a message' do
    it 'can Block a message reported as spam - (hiding it from the user)' do
    end
  end

  context 'Resolve a ticket' do
    it 'removes it from our dashboard' do
    end

    it 'makes a PUT request to endpoint /reports/:reportID' do
    end

    it 'updates report database to CLOSED' do
    end
  end
end
