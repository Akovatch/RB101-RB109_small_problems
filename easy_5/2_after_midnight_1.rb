# The time of day can be represented as the number
# of minutes before or after midnight. If the number
# of minutes is positive, the time is after midnight.
#  If the number of minutes is negative, the time is
#   before midnight.

# Write a method that takes a time using this minute-based
#  format and returns the time of day in 24 hour
#  format (hh:mm). Your method should work with any integer
# input.

# You may not use ruby's Date and Time classes.

MINUTES_PER_DAY = 1440

def time_of_day (num)
hour, min = (num % MINUTES_PER_DAY).divmod(60)
format('%02d', hour) + ":" + format('%02d', min)
end

time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"

# LS solution - used constants to avoid having mystery
# number values in code. Also they recommend to avoid using
# modulus on negative numbers, so they used a loop
# to add 1440 repeatedly to any negative number.

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def normalize_minutes_to_0_through_1439(minutes)
  while minutes < 0
    minutes += MINUTES_PER_DAY
  end

  minutes % MINUTES_PER_DAY
end

def time_of_day(delta_minutes)
  delta_minutes = normalize_minutes_to_0_through_1439(delta_minutes)
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end

# Further exploraton: How would you approach this problem if
# you were allowed to use ruby's Date and Time classes?

def time_of_day_alt2(number)
  time = Time.new(2021)
  time += (number * 60)
  time.strftime("%H:%M")
end





