class RemoveColumnsFromHabits < ActiveRecord::Migration[5.2]
  def change
    remove_column :habits, :daily_goal, :integer
    remove_column :habits, :weekly_goal, :integer
  end
end
