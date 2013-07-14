class AddExerciseIdToPerformances < ActiveRecord::Migration
  def change
    add_column :performances, :exercise_id, :integer
  end
end
