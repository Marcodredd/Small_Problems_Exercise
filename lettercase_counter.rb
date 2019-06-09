# Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the number of characters in 
# the string that are lowercase letters, one the number of characters that are uppercase letters, and one the number of characters 
# that are neither.

def letter_case_count(str)
  lowercase_str = 'a-z'
  uppercase_str = 'A-Z'
  neither_str = '^A-Za-z'

  lowercase_count = str.count(lowercase_str)
  uppercase_count = str.count(uppercase_str)
  neither_count = str.count(neither_str)

  puts "{ lowercase: #{lowercase_count}, uppercase: #{uppercase_count}, neither: #{neither_count} }"
end

letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
