require 'calculate_schedule'

class RoutinesController < ApplicationController
  def edit
    @exercise = params.fetch(:id)
    @weight = params.fetch(:weight) { 5 }
    @unit = params.fetch(:unit) { "lbs" }
    @schedule = CalculateSchedule.new @weight.to_f
  end
end
