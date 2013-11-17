class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.boolean :daily_email_updates
      t.boolean :sharing_default
      t.boolean :default_share_to_twitter

      t.timestamps
    end
  end
end
