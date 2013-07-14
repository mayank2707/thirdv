class CalculateSchedule
  def initialize weight, user, exercise_type
    @weight = weight
    @user = user
    @exercise_type = exercise_type
  end

  [:week1, :week2, :week3, :week4].each do |week|
    define_method week.to_s do
      set1 = set1 week
      set2 = set2 week
      set3 = set3 week
      [set1, set2, set3]
    end
  end

  private
  def set1 week
    case week
    when :week1
      return {
        expected: @weight * 65/100,
        actual: { 
          weight: find_weight(week, :set1),
          rep: find_rep(week, :set1)
        }
      }
    when :week2
      return {
        expected: @weight * 70/100,
        actual: { 
          weight: find_weight(week, :set1),
          rep: find_rep(week, :set1)
        }
      }
    when :week3
      return {
        expected: @weight * 75/100,
        actual: { 
          weight: find_weight(week, :set1),
          rep: find_rep(week, :set1)
        }
      }
    when :week4
      return {
        expected: @weight * 40/100,
        actual: { 
          weight: find_weight(week, :set1),
          rep: find_rep(week, :set1)
        }
      }
    end
  end

  def set2 week
    case week
    when :week1
      return {
        expected: @weight * 75/100,
        actual: { 
          weight: find_weight(week, :set2),
          rep: find_rep(week, :set2)
        }
      }
    when :week2
      return {
        expected: @weight * 80/100,
        actual: { 
          weight: find_weight(week, :set2),
          rep: find_rep(week, :set2)
        }
      }
    when :week3
      return {
        expected: @weight * 85/100,
        actual: { 
          weight: find_weight(week, :set2),
          rep: find_rep(week, :set2)
        }
      }
    when :week4
      return {
        expected: @weight * 50/100,
        actual: { 
          weight: find_weight(week, :set2),
          rep: find_rep(week, :set2)
        }
      }
    end
  end

  def set3 week
    case week
    when :week1
      return {
        expected: @weight * 85/100,
        actual: { 
          weight: find_weight(week, :set3),
          rep: find_rep(week, :set3)
        }
      }
    when :week2
      return {
        expected: @weight * 90/100,
        actual: { 
          weight: find_weight(week, :set3),
          rep: find_rep(week, :set3)
        }
      }
    when :week3
      return {
        expected: @weight * 95/100,
        actual: { 
          weight: find_weight(week, :set3),
          rep: find_rep(week, :set3)
        }
      }
    when :week4
      return {
        expected: @weight * 60/100,
        actual: { 
          weight: find_weight(week, :set3),
          rep: find_rep(week, :set3)
        }
      }
    end
  end

  def find_weight week, set
    find_performance(week,set).try(:weight)
  end

  def find_rep week, set
    find_performance(week,set).try(:repetitions)
  end

  def find_performance week, set
    week_and_set = week.to_s + set.to_s
    exercise = @user.exercises.find_by_exercise_type @exercise_type
    exercise.performances.where(week_set: week_and_set).first
  end
end
