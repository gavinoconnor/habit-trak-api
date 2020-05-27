class AddColsToUserHabits < ActiveRecord::Migration[5.2]
  def change
    add_column :user_habits, :name, :string
    add_column :user_habits, :img, :string
    add_column :user_habits, :category, :string
  end
end
