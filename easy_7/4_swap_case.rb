# Write a method that takes a string as an argument and returns a
# new string in which every uppercase letter is replaced by its
# lowercase version, and every lowercase letter by its
# uppercase version. All other characters should be unchanged.

# You may not use String#swapcase; write your own version
# of this method.

def swapcase(str)
  char_arr = str.chars.map do |char|
    if char == char.upcase
      char.downcase
    elsif char == char.downcase
      char.upcase
    else
      char
    end
  end
  char_arr.join
end

swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'


# LS solution using regex and match operator:

def swapcase(string)
  characters = string.chars.map do |char|
    if char =~ /[a-z]/
      char.upcase
    elsif char =~ /[A-Z]/
      char.downcase
    else
      char
    end
  end
  characters.join
end