# Write a method that returns true if the string passed as an argument is a palindrome, 
# false otherwise. A palindrome reads the same forward and backward. For this exercise, case matters as does punctuation and spaces.

def palindrome?(str)
  new_arry = []
  index = 1
  while index <= str.size
    new_arry << str[-index]
    index += 1
  end
  new_arry.join == str
end

puts palindrome?('madam') #== true
puts palindrome?('Madam') #== false          # (case matters)
puts palindrome?("madam i'm adam") #== false # (all characters matter)
puts palindrome?('356653') #== true

# Ruby have a method String#reverse
