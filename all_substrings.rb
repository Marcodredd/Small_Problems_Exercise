# Write a method that returns a list of all substrings of a string. The returned list 
# should be ordered by where in the string the substring begins. This means that all 
# substrings that start at position 0 should come first, then all substrings that start 
# at position 1, and so on. Since multiple substrings will occur at each position, the 
# substrings at a given position should be returned in order from shortest to longest.

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
  index = 0
  arry = []
 
  loop do
    arry.concat(substrings_at_start(str))
    str.delete!(str[0])
    index += 1
    break if str.size.zero?
  end
  arry
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
