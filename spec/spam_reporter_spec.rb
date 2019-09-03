require 'rspec'
require 'rack/test'
require_relative '../spam_report_manager.rb'

# Please Note: Given that this is a mini project and in the interest of time I did NOT create a test database. Naturally, I WOULD do that if this were a real project. I would not be saving and destroying objects and records on the actual database.
describe SpamReportManager do

  include Rack::Test::Methods
  
  def app
    SpamReportManager.new
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

    it 'shows the spam Type, ID, state and message on a spam report' do
      new_report = UserSpamReport.new(id: 0, state: "OPEN", spam_report_id: "12345a", reference_type: "SPAM", payload_message: "Friedrich Nietschze findet das hier ist spam.")
      new_report.save

      get '/spam_dashboard' do
        expect(last_response.body).to include("OPEN", "12345a", "SPAM", "Friedrich Nietschze findet das hier ist spam.")
      end

      new_report.destroy
    end
  end
 
  context 'Block a message' do
    it 'can access a button to block a message reported as spam' do
    end

    it 'can, after clicking, see that this spam-reported message will now be blocked' do
    end
  end

  context 'Resolve a ticket' do
    it 'can access a button to resolve a ticket reported as spam' do
    end

    it 'removes it from our dashboard' do
    end

    it 'makes a PUT request to endpoint /reports/:reportID' do
    end

    it 'updates report database to CLOSED' do
    end
  end
end
