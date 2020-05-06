class School
  attr_reader :start_time, :hours_in_school_day, :student_names

  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
  end

  def add_student_name(student_name)
    @student_names << student_name
  end

  def end_time
    begining = start_time.to_i
    total_time = begining + hours_in_school_day
    total_time.to_s + ":00"
  end

  def is_full_time?
    if hours_in_school_day >= 4
      true
    else
      false
    end
  end

  def standard_student_names
    @student_names.map { |name| name.capitalize }
  end
end
