class Performance < ActiveRecord::Base
  attr_accessible :repetitions, :week_set, :weight, :exercise_id

  belongs_to :exercise
end
