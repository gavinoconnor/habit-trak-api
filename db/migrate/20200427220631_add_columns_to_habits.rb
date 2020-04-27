class AddColumnsToHabits < ActiveRecord::Migration[5.2]
  def change
    add_column :habits, :daily_goal, :integer
    add_column :habits, :weekly_goal, :integer
  end
end
