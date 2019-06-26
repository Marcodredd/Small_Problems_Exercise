# Write a method that returns a list of all substrings of a string that are palindromic. 
# That is, each substring must consist of the same sequence of characters forwards as it does 
# backwards. The return value should be arranged in the same sequence as the substrings appear 
# in the string. Duplicate palindromes should be included multiple times.

# You may (and should) use the substrings method you wrote in the previous exercise.

def substrings_at_start(str)
  index = 0
  length = 1
  arry = []

  while length <= str.size
    arry << str[index, length]
    length += 1
  end
  arry
end

def substrings(str)
  arry = []
 
  (0..str.size - 1).each do |index|
    new_str = str[index..-1]
    arry.concat(substrings_at_start(new_str))
  end
  arry
end

def palindromes(str)
  palindrome_array = []
  array_of_substrings = substrings(str)

  array_of_substrings.each do |substring|
    if substring == substring.reverse && substring.size > 1
      palindrome_array << substring
    end
  end
  palindrome_array
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
