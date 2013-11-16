class AlterActivitiesAddDesc < ActiveRecord::Migration
  def up
    add_column :activities, :desc, :string
  end

  def down
    remove_column :activities, :desc
  end
end
