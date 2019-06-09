# Write a method that takes two Array arguments in which each Array contains a list of numbers, 
# and returns a new Array that contains the product of each pair of numbers from the arguments 
# that have the same index. You may assume that the arguments contain the same number of elements.

def multiply_list(arry1, arry2)
  index = 0
  arry3 = []

  while index < arry1.length
    arry3 << arry1[index] * arry2[index]
    index += 1
  end
  arry3
end

puts multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
