# Write a method that takes an Array as an argument, and reverses its elements 
# in place; that is, mutate the Array passed into this method. The return value 
# should be the same Array object.

# You may not use Array#reverse or Array#reverse!.

def reverse!(arry)
  left_index = 0
  right_index = -1

  while left_index < arry.size / 2
    arry[left_index], arry[right_index] = arry[right_index], arry[left_index]
    left_index += 1
    right_index -= 1
  end
  arry
end

puts reverse!([1, 2, 3, 4])
