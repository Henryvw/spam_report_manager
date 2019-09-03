ENV['RACK_ENV'] = 'test'
require 'rspec'
require 'capybara'
require 'capybara/rspec'
require 'capybara/dsl'
require 'rack/test'

require_relative '../spam_report_manager.rb'

Capybara.configure do |c|
  c.app_host = "http://localhost:4567"
  # Capybara's click_button doesn't work with the Racktest driver. I guess there is some JS in the HTML submit that I don't see? Confused about that actually
  c.default_driver = :rack_test
end

RSpec.configure do |config|
  config.include Capybara::DSL
end

describe SpamReportManager, type: :feature do

  include Rack::Test::Methods
  include Capybara
  include Capybara::DSL
  Capybara.current_driver = :rack_test
  Capybara.app = SpamReportManager
  Capybara.run_server = false

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
      new_test_report = UserSpamReport.new(id: 0, state: "OPEN", spam_report_id: "000aaa", payload_report_type: "SPAM", payload_message: "UhOH")
      new_test_report.save

      get '/spam_dashboard' do

        expect(last_response.body).to include('ID', 'Type', 'Message') end
    end

    it 'shows the spam Type, ID, state and message on a spam report' do
      new_test_report = UserSpamReport.new(id: 1, state: "OPEN", spam_report_id: "111bbb", payload_report_type: "SPAM", payload_message: "Friedrich Nietschze findet das hier ist spam.")
      new_test_report.save

      get '/spam_dashboard' do
        expect(last_response.body).to include("OPEN", "111bbb", "SPAM", "Friedrich Nietschze findet das hier ist spam.")
      end
    end
  end
 
  context 'Block a message' do
    it 'can access a button to block a message reported as spam' do
      get '/spam_dashboard' do
        expect(last_response.body).to include("<button name='_method' type='hidden' value='put'>Resolve</button>")
      end
    end

    it 'can, after clicking, see that this spam-reported message will now be blocked' do
    end
  end

  context 'Resolve a ticket' do
    it 'can access a button to resolve a ticket reported as spam' do
      get '/spam_dashboard' do
        expect(last_response.body).to include("<button>Block</button>")
      end
    end

    it 'when clicked, removes that spam report from our dashboard' do
      Capybara.current_driver = :selenium_chrome
      UserSpamReport.find(id=0).destroy
      UserSpamReport.find(id=1).destroy
      new_test_report = UserSpamReport.new(id: 2, state: "OPEN", spam_report_id: "333ccc", payload_report_type: "SPAM", payload_message: "Schiller sagt: SPAM!")
      new_test_report.save

      visit('/spam_dashboard')
      find('button', text: 'Resolve').click

      expect(page).not_to have_content '333ccc'
    end

    it 'makes a PUT request to endpoint /reports/:reportID' do
      Capybara.use_default_driver
      new_test_report = UserSpamReport.new(id: 3, state: "OPEN", spam_report_id: "444ddd", payload_report_type: "SPAM", payload_message: "Goethe spam")

      page.driver.post("/reports/#{new_test_report.id}")

      expect(page).not_to have_content '444ddd'
    end

    it 'updates report database to CLOSED' do
      expect(UserSpamReport.find_by_id(2).state).to eq "CLOSED"
    end
  end

  #Cleanup
  all_test_reports = UserSpamReport.all
  all_test_reports.each do |report|
    report.destroy
  end
end
