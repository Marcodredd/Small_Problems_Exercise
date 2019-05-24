# Build a program that randomly generates and prints Teddy's age. To get the age, you should generate a random number between 20 and 200.

puts "What is Teddy's age?"
age = (20..200).to_a.sample
puts "Teddy is #{age} years old!"

# Another solution
# age = rand(20..200)
