require 'calculate_schedule'

class RoutinesController < ApplicationController
  def edit
    @exercise = params.fetch(:id)
    ex_type = current_user.exercises.find_by_exercise_type(@exercise)
    @weight = ex_type.try(:max_weight) || 0.0
    @unit = ex_type.try(:unit) || "lbs"
    @schedule = CalculateSchedule.new @weight.to_f, current_user, @exercise
  end

  def update
    @exercise = params.fetch(:id)
    ex_type = current_user.exercises.find_or_initialize_by_exercise_type(@exercise)
    ex_type.update_attributes(
      max_weight: params[:weight],
      unit: params[:unit]
    )

    @weight = ex_type.max_weight
    @unit = ex_type.unit
    @schedule = CalculateSchedule.new @weight.to_f, current_user, @exercise
    render :edit
  end

  def update_performance
    @exercise = params.fetch(:id)
    ex_type = current_user.exercises.find_by_exercise_type(@exercise)
    @weight = ex_type.try(:max_weight) || 0.0
    @unit = ex_type.try(:unit) || "lbs"
    unless ex_type
      redirect_to edit_routine_path(@exercise), alert: "Please save max weight before updating your actual routine"
      return
    end
    ex_type.update_performance(params)
    @schedule = CalculateSchedule.new @weight.to_f, current_user, @exercise
    redirect_to edit_routine_path(@exercise), notice: "Updates saved"
  end
end
