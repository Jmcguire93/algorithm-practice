# Sum Nums
# Write a method sum_nums(max) that takes in a number max and returns the sum of all numbers from 1 up to and including max.

# While Loop

def sum_nums(max)
  sum = 0
  i = 1

  while i <= max 
    sum += i 
    i += 1
  end
  sum 
end

p sum_nums(4) # => 10, because 1 + 2 + 3 + 4 = 10
p sum_nums(5) # => 15

# Each Loop

def sum_nums(max)
  sum = 0
  i = 1

  (i..max).each { |num| sum += num } 

  sum 
end

p sum_nums(4) # => 10, because 1 + 2 + 3 + 4 = 10
p sum_nums(5) # => 15