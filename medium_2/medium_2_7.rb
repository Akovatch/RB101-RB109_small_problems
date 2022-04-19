# Write a method that returns the number of Friday the 13ths in the year given by an argument.
# You may assume that the year is greater than 1752 (when the United Kingdom adopted the
# modern Gregorian Calendar) and that it will remain in use for the foreseeable future.

# Hint:
# Ruby's Date class may be helpful here.
# Look at how to initialize a Date object
# Look at the friday? method

# p friday_13th(2015) == 3
# p friday_13th(1986) == 1
# p friday_13th(2019) == 2

# alg:
  # init month variable
  # init friday_count variable
  # loop from 1 to 12 (upto)
    # initialize a new date with year and month as variables and 13 as day
    # check if date is a Friday? If yes, friday_count += 1
  # return friday_count

require 'date'

def friday_13th(year)
  friday_count = 0
  1.upto(12) do |month|
   date = Date.new(year, month, 13)
   friday_count += 1 if date.friday?
  end
  friday_count
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2


# LS Solution: "This one is interesting. First, we must require the Date class,
# since that class isn't part of the core library. This problem asks us to find
# all Friday the 13ths in a given year. To do this is, we step through each
# month of the year and look at the 13th of the month; if it's a Friday, we increment unlucky_count.

# require 'date'

# def friday_13th(year)
#   unlucky_count = 0
#   thirteenth = Date.civil(year, 1, 13)
#   12.times do
#     unlucky_count += 1 if thirteenth.friday?
#     thirteenth = thirteenth.next_month
#   end
#   unlucky_count
# end