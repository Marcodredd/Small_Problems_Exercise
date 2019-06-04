# Write a method that takes two Arrays as arguments, and returns an Array that contains all of 
# the values from the argument Arrays. There should be no duplication of values in the returned 
# Array, even if there are duplicates in the original Arrays.

def merge(arry1, arry2)
  arry1.concat(arry2).uniq
end

puts merge([1, 3, 5], [3, 6, 9])
