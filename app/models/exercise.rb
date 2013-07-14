class Exercise < ActiveRecord::Base
  attr_accessible :exercise_type, :max_weight, :user_id, :unit

  belongs_to :user
end
