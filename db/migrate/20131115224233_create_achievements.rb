class CreateAchievements < ActiveRecord::Migration
  def change
    create_table :achievements do |t|
      t.string :username
      t.string :pic_url
      t.string :title
      t.string :message
      t.integer :points
      t.integer :time_ago
      t.string :profile_url
      t.string :url

      t.timestamps
    end
  end
end
