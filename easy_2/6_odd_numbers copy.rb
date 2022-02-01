# Print all odd numbers from 1 to 99, inclusive, to the console,
# with each number on a separate line.

(1..99).each {|num| puts num if num.odd?}

# alternative solutions:

# 1:

puts (1..99).step(2).to_a

# 2:

puts (1..99).to_a.select(&:odd?)

#3:

value = 1
while value <= 99
  puts value
  value += 2
end