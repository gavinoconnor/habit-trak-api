class UserHabitsController < ApplicationController

  def index
    @user_habits = UserHabit.all
    if @user_habits
      render json: {
        user_habits: @user_habits
      }
    else
      render json: {
        status: 500,
        errors: ['No User Habits Found']
      }
    end
  end

  def create
    @user_habit = UserHabit.create(user_id: params[:user_id], habit_id: params[:habit_id])
    if @user_habit.save
      render json: {
        user_habit: @user_habit
      }
    else
      render json: {
        status: 500,
        errors: @user_habit.errors.full_messages
      }
    end
  end


end
