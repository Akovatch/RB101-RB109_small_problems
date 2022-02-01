# What does this code print out? Can you explain the results?

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# =>BOB
# =>BOB

# They both variables became set to 'BOB' because str.upcase! is a method that mutates the caller.
# Because both variables were pointing at the same value, when str.upcase! mutated
# the value it affected both variables.