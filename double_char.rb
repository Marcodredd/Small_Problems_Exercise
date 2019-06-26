# Write a method that takes a string, and returns a new string in which every character is doubled.

def repeater(str)
  new_str = ''
  str.each_char do |char|
    new_str << char * 2
  end
  new_str
end

puts repeater('Hello') #== "HHeelllloo"
puts repeater("Good job!") == "GGoooodd  jjoobb!!"
puts repeater('') == ''

#Another solution
#def repeater(str)
#  new_str = ''
#  str.each_char do |c|
#    new_str << c.concat(c)
#  end
#  puts new_str
#end