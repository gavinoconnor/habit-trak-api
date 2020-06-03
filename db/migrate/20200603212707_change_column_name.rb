class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :user_habits, :daily_goal, :activation_count
  end
end
