# Build a program that displays when the user will retire and how many years she has 
# to work till retirement.
require 'date'

CURRENT_YEAR = Time.new.year
print 'What is your age? '
age = gets.chomp.to_i

print 'At what age would you like to retire? '
retire_age = gets.chomp.to_i

retirement_year = CURRENT_YEAR + (retire_age - age)

puts "It's #{CURRENT_YEAR}. You will retire in #{retirement_year}."
puts "You have only #{retire_age -age} years of work to go!"
