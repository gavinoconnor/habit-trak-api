class CreateHabits < ActiveRecord::Migration[5.2]
  def change
    create_table :habits do |t|
      t.string :name
      t.string :category
      t.string :img
      t.integer :points

      t.timestamps
    end
  end
end
