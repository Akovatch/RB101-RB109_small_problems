# Build a program that displays when the user will
# retire and how many years she has to work till retirement.

puts 'What is your age?'
  current_age = gets.chomp.to_i

puts 'At what age would you like to retire?'
  retirement_age = gets.chomp.to_i

years_until_retirement = retirement_age - current_age
current_year = Time.now.year

puts "It's #{current_year}.
You will retire in #{current_year + years_until_retirement}.
You have only #{years_until_retirement} years of work to go!"