# As seen in the previous exercise, the time of day can be
# represented as the number of minutes before or after
# midnight. If the number of minutes is positive,
# the time is after midnight. If the number of minutes
# is negative, the time is before midnight.

# Write two methods that each take a time of day in 24
# hour format, and return the number of minutes before
# and after midnight, respectively. Both methods should
#  return a value in the range 0..1439.

# You may not use ruby's Date and Time methods.

after_midnight('00:00') == 0
before_midnight('00:00') == 0
after_midnight('12:34') == 754
before_midnight('12:34') == 686
after_midnight('24:00') == 0
before_midnight('24:00') == 0








MINUTES_PER_DAY = 1440

def after_midnight (time)
  return 0 if time == '24:00'
  arr = time.split(':')
  (arr[0].to_i * 60) + arr[1].to_i
end

def before_midnight (time)
  return 0 if time == '24:00' || time == '00:00'
  MINUTES_PER_DAY - after_midnight(time)
end

# LS solution: double variable assignment with split method. Long
# string of methods including map shorthand.
# before_midnight method calls after_midnight method.
# % is used to handle the 24:00 and 00:00 edge cases.

MINUTES_PER_DAY = 1440

def after_midnight(time_str)
  hours, minutes = time_str.split(':').map(&:to_i)
  (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
end

def before_midnight(time_str)
  delta_minutes = MINUTES_PER_DAY - after_midnight(time_str)
  delta_minutes = 0 if delta_minutes == MINUTES_PER_DAY
  delta_minutes
end


