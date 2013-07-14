class AddUnitToExercises < ActiveRecord::Migration
  def change
    add_column :exercises, :unit, :string
  end
end
