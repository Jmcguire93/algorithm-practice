# Write a method at_most? that accepts an array, a number (n), and a block as arguments. 
# The method should return a boolean indicating whether no more than n elements of the array return true when given to the block. 
# Solve this using Array#each.

def at_most?(arr, n, &blc)
  count = 0 

  arr.each { |el| count += 1 if blc.call(el) }
  count <= n 
end

p at_most?([-4, 100, -3], 1) { |el| el > 0 }                         # true
p at_most?([-4, -100, -3], 1) { |el| el > 0 }                        # true
p at_most?([4, 100, -3], 1) { |el| el > 0 }                          # false
p at_most?([4, 100, 3], 1) { |el| el > 0 }                           # false
p at_most?(['r', 'q', 'e', 'z'], 2) { |el| 'aeiou'.include?(el) }    # true
p at_most?(['r', 'i', 'e', 'z'], 2) { |el| 'aeiou'.include?(el) }    # true
p at_most?(['r', 'i', 'e', 'o'], 2) { |el| 'aeiou'.include?(el) }    # false