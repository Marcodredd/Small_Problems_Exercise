# Write a method that takes an Array as an argument, and returns two Arrays (as a pair of nested Arrays) 
# that contain the first half and second half of the original Array, respectively. If the original array 
# contains an odd number of elements, the middle element should be placed in the first half Array.

def halvsies(arry)
  arry_center = (arry.size / 2).ceil
  first_part = arry.slice(0, arry_center)
  second_part = arry.slice(arry_center, arry.size)
  [first_part, second_part]
end

halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]
