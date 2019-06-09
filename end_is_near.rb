# Write a method that returns the next to last word in the String passed to it as an argument.

# You may assume that the input String will always contain at least two words.

def penultimate(str)
  arr = str.split
  arr[-2]
end

puts penultimate('last word') == 'last'
puts penultimate('Launch School is great!') == 'is'
