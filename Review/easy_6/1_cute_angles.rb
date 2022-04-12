# Write a method that takes a floating point number that represents
#  an angle between 0 and 360 degrees and returns a String that represents
# that angle in degrees, minutes and seconds. You should use a degree symbol
# (°) to represent degrees, a single quote (') to represent minutes, and a
# double quote (") to represent seconds. A degree has 60 minutes,
# while a minute has 60 seconds.

# Note: your results may differ slightly depending on how you round values,
# but should be within a second or two of the results shown.

# You should use two digit numbers with leading zeros when formatting
# the minutes and seconds, e.g., 321°03'07".

# You may use this constant to represent the degree symbol:

dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")






DEGREE = "\xC2\xB0"

def dms (num)
  degrees, remainder = num.divmod(1)
  minutes, remainder = (remainder * 60).divmod(1)
  seconds = (remainder * 60).round(0)

  %(#{degrees}#{DEGREE}#{format('%02d\'%02d"', minutes, seconds)})
end

