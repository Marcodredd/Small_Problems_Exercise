# Write a method which takes a grocery list (array) of fruits with quantities and converts it into an array of the correct number of each fruit.

def buy_fruit(arry)
  new_arry = []
  index = 0
  while index < arry.size
    new_arry << [arry[index][0]] * arry[index][1]
    index += 1
  end
  new_arry.flatten
end

puts buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]

# Another solution
# def buy_fruit(arry)
#  arry.map do |element1, element2|
#    [element1] * element2
#  end.flatten
# end
