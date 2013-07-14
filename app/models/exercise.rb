class Exercise < ActiveRecord::Base
  attr_accessible :exercise_type, :max_weight, :user_id, :unit

  belongs_to :user
  has_many :performances

  def update_performance params
    (1..4).each do |week_no|
      (1..3).each do |set_no|
        week_set = "week" + week_no.to_s + "set" + set_no.to_s
        weight = params[(week_set + "_weight").to_sym]
        rep = params[(week_set + "_rep").to_sym]
        performance_set = Performance.find_or_initialize_by_week_set_and_exercise_id(week_set, self.id)
        performance_set.update_attributes(weight: weight, repetitions: rep)
      end
    end
  end
end
