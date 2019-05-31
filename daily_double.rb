# Write a method that takes a string argument and returns a new 
# string that contains the value of the original string with all 
# consecutive duplicate characters collapsed into a single character. 
# You may not use String#squeeze or String#squeeze!.

def crunch(str)
  index = 0
  new_str = ''
  while index < str.size
    new_str << str[index] unless str[index] == str[index + 1]
    index += 1
  end
  new_str
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''
