class CreatePerformances < ActiveRecord::Migration
  def change
    create_table :performances do |t|
      t.string :week_and_set
      t.float :weight
      t.integer :repetitions

      t.timestamps
    end
  end
end
