# Build a program that asks a user for the length and width
# of a room in meters and then displays the area of the room
# in both square meters and square feet.

# Note: 1 square meter == 10.7639 square feet
# Do not worry about validating the input at this time.

SQMETERS_TO_SQFEET = 10.7639

puts "==> Enter the length of the room in meters: "
length = gets.chomp.to_f

puts "==> Enter the width of the room in meters: "
width = gets.chomp.to_f

area_meters = (length * width).round(2)
area_feet = (area_meters * SQMETERS_TO_SQFEET).round(2)

puts "The area of the room is #{area_meters} " + \
"square meters (#{area_feet} square feet)."

# Further Exploration:
# Modify this program to ask for the input measurements in feet,
# and display the results in square feet, square inches,
# and square centimeters.

SQFEET_TO_SQINCHES = 144
SQFEET_TO_SQCENTIMETERS = 929.03

puts "==> Enter the length of the room in feet: "
length = gets.chomp.to_f

puts "==> Enter the width of the room in feet: "
width = gets.chomp.to_f

area_feet = (length * width).round(2)
area_inches  = (area_feet * SQFEET_TO_SQINCHES).round(2)
area_centimeters = (area_feet * SQFEET_TO_SQCENTIMETERS).round(2)

puts "==> The area of the room is #{area_feet} square feet. " + \
"This is equal to #{area_inches} square inches " + \
"and #{area_centimeters} square centimeters."