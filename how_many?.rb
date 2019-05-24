# Write a method that counts the number of occurrences of each element in a given array.

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck', 'suv'
]

def count_occurences(arry)
  str = arry.join(',').downcase!
  new_arry = str.split(',')
  new_arry.uniq.each { |vehicle| puts "#{vehicle} => #{new_arry.count(vehicle)}" }
end

count_occurences(vehicles)
