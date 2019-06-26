# Write a method that returns a list of all substrings of a string that 
# start at the beginning of the original string. The return value should 
# be arranged in order from shortest to longest substring.

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

puts substrings_at_start('abc') == ['a', 'ab', 'abc']
puts substrings_at_start('a') == ['a']
puts substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
