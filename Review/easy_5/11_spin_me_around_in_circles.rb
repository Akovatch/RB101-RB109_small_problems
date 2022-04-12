# You are given a method named spin_me that takes a string as an argument and
# returns a string that contains the same words, but with each word's
# characters reversed. Given the method's implementation, will the returned
# string be the same object as the one passed in as an argument
# or a different object?

spin_me("hello world") # "olleh dlrow"









def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

# Notes:

# Because we convert the string into an array with .split, it will forever be a new object

# Even just doing str.split.join(" ") returns a different object

# However, if we rework this method to use an array argument instead of a
# string and we reversed each word in it by calling the same methods,
# then the array that was passed in as an argument and the array that was returned
# from the method would be the same object.