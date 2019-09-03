class AddBlockedToUserSpamReport < ActiveRecord::Migration[6.0]
  def change
    add_column :user_spam_reports, :blocked, :boolean
  end
end

