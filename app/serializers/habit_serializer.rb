class HabitSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :img

  # has_many :user_habits
end
