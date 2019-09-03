class CreateUserSpamReports < ActiveRecord::Migration[6.0]
  def up
    create_table :user_spam_reports do |t|
      t.string :spam_report_id
      t.string :source
      t.string :source_identity_id
      t.string :reference_id
      t.string :reference_type
      t.string :state
      t.string :payload_source
      t.string :payload_report_type
      t.string :payload_message
      t.string :payload_report_id
      t.string :payload_reference_id
      t.string :payload_reference_resource_id
      t.string :payload_reference_resource_type
      t.string :created
    end
  end

  def down
  end
end
