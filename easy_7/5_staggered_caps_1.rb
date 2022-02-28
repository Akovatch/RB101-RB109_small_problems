# Write a method that takes a String as an argument, and
# returns a new String that contains the original value
# using a staggered capitalization scheme in which every
# other character is capitalized, and the remaining
# characters are lowercase. Characters that are not
# letters should not be changed, but count as characters
# when switching between upper and lowercase.

def staggered_case(str)
  staggered_arr = []
  str.chars.each_with_index do |char, index|
  index.even? ? (staggered_arr << char.upcase) : (staggered_arr << char.downcase)
  end
  staggered_arr.join
end

staggered_case('I Love Launch School!')
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

# LS solution: uses a variable 'need_upper' that gets switched on and off by each loops

def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  result
end