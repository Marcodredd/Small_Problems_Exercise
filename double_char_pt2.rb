# Write a method that takes a string, and returns a new string in which 
# every consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, 
# and whitespace should not be doubled.

def double_consonants(str)
  new_str = ''
  str.each_char do |char|
    if char =~ /[-!aeiou0-9' ']/i
      new_str << char
    else
      new_str << char.concat(char)
    end
  end
  new_str
end

puts double_consonants('String') == "SSttrrinngg"
puts double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
puts double_consonants("July 4th") == "JJullyy 4tthh"
puts double_consonants('') == ""
