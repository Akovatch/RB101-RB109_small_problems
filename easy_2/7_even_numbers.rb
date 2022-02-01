# Print all odd numbers from 1 to 99, inclusive, to the console,
# with each number on a separate line.

(1..99).each {|num| puts num if num.even?}

# alternative solutions:

# 1:

puts (1..99).to_a.select(&:even?)

# 2:

2.step(99,2).to_a

# 3:

value = 1
while value <= 99
  puts value if value.even?
  value += 1
end