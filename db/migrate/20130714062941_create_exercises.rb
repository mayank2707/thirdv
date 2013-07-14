class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.integer :user_id
      t.string :exercise_type
      t.float :max_weight

      t.timestamps
    end
  end
end
