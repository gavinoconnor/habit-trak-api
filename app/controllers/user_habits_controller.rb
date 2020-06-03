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
    @user_habit = UserHabit.new(user_habit_params)
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

  def update
    @user_habit = UserHabit.find(params[:id])
    if @user_habit.update(user_habit_params)
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

  def destroy
    @user_habit = UserHabit.find(params[:id])
    if @user_habit.destroy
      render json: {
        status: 200
      }
    end
  end

  private

  def user_habit_params
    params.permit(
      :user_id,
      :habit_id,
      :activation_count,
      :weekly_goal,
      :name,
      :img,
      :category
    )
  end


end
