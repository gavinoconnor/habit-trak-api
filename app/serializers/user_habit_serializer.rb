class UserHabitSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :habit_id, :daily_goal, :weekly_goal

end
