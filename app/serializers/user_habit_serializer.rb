class UserHabitSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :habit_id, :activation_count, :weekly_goal

end
