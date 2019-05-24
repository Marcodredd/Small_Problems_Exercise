# Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

puts '<< Please enter an integer greater than 0:'
number = gets.chomp.to_i
arry = []

1.upto(number) do |i|
  arry << i
end

puts "<< Enter 's' to compute the sum, 'p' to compute the product."
compute_code = gets.chomp

case compute_code
when 's' then puts "The sum of the integers between 1 and #{number} is #{arry.reduce(:+)}."
when 'p' then puts "The product of the integers between 1 and #{number} is #{arry.reduce(:*)}."
else
  puts "Invalid Operation"
end
