# Write a method that takes an Array of numbers and then returns the sum of the 
# sums of each leading subsequence for that Array. You may assume that the Array 
# always contains at least one number.

def sum_of_sums(arry)
  total = 0
  loop do
    arry.each do |num|
      total += num
    end
    arry.pop
    break if arry.size == 0
  end
  total
end

puts sum_of_sums([3, 5, 2]) #== (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
puts sum_of_sums([1, 5, 7, 3]) #== (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
puts sum_of_sums([4]) #== 4
puts sum_of_sums([1, 2, 3, 4, 5]) #== 35

# Another of my solution
def sum_of_sums(arry)
  index = 1
  sum_of_arry = 0
  while index <= arry.size
     sum_of_arry = sum_of_arry + arry.take(index).sum
     index += 1
  end
 puts sum_of_arry
end