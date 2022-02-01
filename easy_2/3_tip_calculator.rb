# Create a simple tip calculator. The program should prompt for a bill 
# amount and a tip rate. The program must compute the tip and then 
# display both the tip and the total amount of the bill.

puts "What is the bill? "
bill = gets.chomp.to_f

puts "What is the tip percentage? "
percentage = (gets.chomp.to_f / 100)

tip = (bill * percentage).round(2)
total = (bill + tip).round(2)

puts "The tip is #{tip}"
puts "The total is #{total}"

# Further Exploration
# Our solution prints the results as $30.0 and $230.0 instead of 
# the more usual $30.00 and $230.00. Modify your solution so it 
# always prints the results with 2 decimal places.

puts "What is the bill? "
bill = gets.chomp.to_f

puts "What is the tip percentage? "
percentage = (gets.chomp.to_f / 100)

tip = (bill * percentage).round(2)
total = (bill + tip).round(2)

puts "The tip is #{format("%.2f", tip)}"
puts "The total is #{format("%.2f", total)}"