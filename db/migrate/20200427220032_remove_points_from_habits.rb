class RemovePointsFromHabits < ActiveRecord::Migration[5.2]
  def change
    remove_column :habits, :points, :integer
  end
end
