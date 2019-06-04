# Write a method that takes an Array, and returns a new Array with the elements of the 
# original list in reverse order. Do not modify the original list.

# You may not use Array#reverse or Array#reverse!, nor may you use the method you wrote 
# in the previous exercise.

def reverse(arry)
  index = 1
  new_arry = []

  while index <= arry.size
    new_arry << arry[-index]
    index += 1
  end
  new_arry
end

puts reverse([1, 2, 3, 4])
