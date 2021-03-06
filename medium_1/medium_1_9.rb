# Fibonacci Numbers (Procedural)

# In the previous exercise, we developed a recursive solution to calculating the nth Fibonacci number.
# In a language that is not optimized for recursion, some (not all) recursive methods can be
# extremely slow and require massive quantities of memory and/or stack space.

# Ruby does a reasonably good job of handling recursion, but it isn't designed for heavy recursion;
# as a result, the Fibonacci solution is only useful up to about fibonacci(40). With higher values
# of nth, the recursive solution is impractical. (Our tail recursive solution did much better,
# but even that failed at around fibonacci(8200).)

# Fortunately, every recursive method can be rewritten as a non-recursive (procedural) method.

# Rewrite your recursive fibonacci method so that it computes its results without recursion.

# Examples:

# fibonacci(20) == 6765
# fibonacci(100) == 354224848179261915075
# fibonacci(100_001) # => 4202692702.....8285979669707537501

def fibonacci(n)
num1 = 0
num2 = 1
sum = 0
  1.upto(n) do |iteration|
      sum = num1 + num2
      num2 = num1 #this statement must occur before num1 is reassigned to sum
      num1 = sum
  end
  sum
end

p fibonacci(3)


# LS Solution: same idea, but using an array with parallel assignment. The upto method doesn't execute
# unless nth is += 3.

def fibonacci(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, first + last]
  end

  last
end