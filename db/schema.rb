# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "user_spam_reports", force: :cascade do |t|
    t.string "spam_report_id"
    t.string "source"
    t.string "source_identity_id"
    t.string "reference_id"
    t.string "reference_type"
    t.string "state"
    t.string "payload_source"
    t.string "payload_report_type"
    t.string "payload_message"
    t.string "payload_report_id"
    t.string "payload_reference_id"
    t.string "payload_reference_resource_id"
    t.string "payload_reference_resource_type"
    t.string "created"
    t.boolean "blocked"
  end

end
