class AddColumnsToUserHabits < ActiveRecord::Migration[5.2]
  def change
    add_column :user_habits, :daily_goal, :integer
    add_column :user_habits, :weekly_goal, :integer
  end
end
