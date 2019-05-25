# Write a program that solicits 6 numbers from the user, then prints a message 
# that describes whether or not the 6th number appears amongst the first 5 numbers.

number_array = []
puts '==> Enter the 1st number:'
first_number = gets.chomp.to_i
number_array << first_number

puts '==> Enter the 2nd number:'
second_number = gets.chomp.to_i
number_array << second_number

puts '==> Enter the 3rd number:'
third_number = gets.chomp.to_i
number_array << third_number

puts '==> Enter the 4th number:'
fourth_number = gets.chomp.to_i
number_array << fourth_number

puts '==> Enter the 5th number:'
fifth_number = gets.chomp.to_i
number_array << fifth_number

puts '==> Enter the last number:'
last_number = gets.chomp.to_i

if number_array.include?(last_number)
  puts "The number #{last_number} appears in #{number_array}."
else
  puts "The number #{last_number} does not appear in #{number_array}."
end
