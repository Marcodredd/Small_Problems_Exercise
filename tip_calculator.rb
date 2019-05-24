# Create a simple tip calculator. The program should prompt for a bill amount 
# and a tip rate. The program must compute the tip and then display both the tip 
# and the total amount of the bill.
# Format it to always return two decimal places with two zeros for example
print 'What is the bill? '
amount = gets.chomp.to_f

print 'What is the tip percentage? '
tip_percentage = gets.chomp.to_f

tip = (amount * tip_percentage / 100)

bill = (amount + tip)
tip = sprintf('%.2f', tip)
bill = sprintf('%.2f', bill)

puts "The tip is $#{tip}"
puts "The total is $#{bill}"
