# Write a method that takes an Array of integers as input, multiplies all the numbers together, 
# divides the result by the number of entries in the Array, and then prints the result rounded 
# to 3 decimal places. Assume the array is non-empty.

def show_multiplicative_average(arry)
  arry_total = arry.reduce(:*).to_f
  result = format('%.3f', (arry_total / arry.length))
  puts "The result is #{result}"
end

show_multiplicative_average([3, 5])
show_multiplicative_average([6])
show_multiplicative_average([2, 5, 7, 11, 13, 17])
