def featured(num)
  (num+1..).each do |n|
    return n if n.odd? && n % 7 == 0 && n.to_s.chars == n.to_s.chars.uniq
    return "Invalid" if n >= 9_876_543_210
  end
end

p featured(870)

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987