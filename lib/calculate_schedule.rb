class CalculateSchedule
  def initialize weight
    @weight = weight
  end

  [:week1, :week2, :week3, :week4].each do |week|
    define_method week.to_s do
      set1 = set1 week
      set2 = set2 week
      set3 = set3 week
      [set1, set2, set3]
    end
  end

  def set1 week
    case week
    when :week1
      return @weight * 65/100
    when :week2
      return @weight * 70/100
    when :week3
      return @weight * 75/100
    when :week4
      return @weight * 40/100
    end
  end

  def set2 week
    case week
    when :week1
      return @weight * 75/100
    when :week2
      return @weight * 80/100
    when :week3
      return @weight * 85/100
    when :week4
      return @weight * 50/100
    end
  end

  def set3 week
    case week
    when :week1
      return @weight * 85/100
    when :week2
      return @weight * 90/100
    when :week3
      return @weight * 95/100
    when :week4
      return @weight * 60/100
    end
  end
end
