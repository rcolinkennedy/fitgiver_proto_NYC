class AddCommentsCountToAchievement < ActiveRecord::Migration
  def change
    add_column :achievements, :comments_count, :integer
  end
end
