# What will the following code print, and why?
# Don't run the code until you have tried to answer.

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2







# => Moe
# => Larry
# => CURLY
# => SHEMP
# => Harpo
# => CHICO
# => Groucho
# => Zeppo

# Explanation: we copied references to array1 objects into array 2,
# then we mutated the values in array1, which mutated the values in array 2 as well.