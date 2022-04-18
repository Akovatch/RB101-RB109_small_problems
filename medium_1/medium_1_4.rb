# You have a bank of switches before you, numbered from 1 to n.
# Each switch is connected to exactly one light that is initially off.
# You walk down the row of switches and toggle every one of them.
# You go back to the beginning, and on this second pass, you toggle
# switches 2, 4, 6, and so on. On the third pass, you go back again
# to the beginning and toggle switches 3, 6, 9, and so on. You repeat
# this process and keep going until you have been through n repetitions.

# Write a method that takes one argument, the total number of switches,
# and returns an Array that identifies which lights are on after n repetitions.

# Example with n = 5 lights:

# round 1: every light is turned on
# round 2: lights 2 and 4 are now off; 1, 3, 5 are on
# round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
# round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
# round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
# The result is that 2 lights are left on, lights 1 and 4.
# The return value is [1, 4].

# With 10 lights, 3 lights are left on: lights 1, 4, and 9.
# The return value is [1, 4, 9].

# input: int (total of swtiches)
# output: array indicating which lights are still on
# rules: will be a valid input
# alg:
  # init hash (Hash.new(0))
  # generate values for hash (times)
    # key will be numbers, values will be booleans
  # iterate over hash (upto)
    # iterate over hash
    # if key matches number we will swtich the boolean (value)
  # select the keys that have values of true

  def toggle_lights(num)
    lights = {}
      1.upto(num) { |n| lights[n] = false }
    1.upto(num) do |n|
      lights.each { |key, value| lights[key] = !value if key % n == 0 }
    end
    lights.select { |key, value| value == true }.keys
  end

toggle_lights(10)