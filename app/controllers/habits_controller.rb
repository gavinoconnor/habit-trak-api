class HabitsController < ApplicationController

  def index
    @habits = Habit.all
    if @habits
      render json: {
        habits: @habits
      }
    else
      render json: {
        status: 500,
        errors: ['No Habits Found']
      }
    end
  end

end
