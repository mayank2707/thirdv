class ChangeWeekAndSetToWeekSetInPerformance < ActiveRecord::Migration
  def change
    rename_column :performances, :week_and_set, :week_set
  end
end
