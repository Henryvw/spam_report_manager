ActiveRecord::Migration.create_table :user_reports do |t|
  t.string :id
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
