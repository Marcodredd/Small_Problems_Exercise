# Write a method that takes a string as an argument and returns a new string in which every uppercase 
# letter is replaced by its lowercase version, and every lowercase letter by its uppercase version. 
# All other characters should be unchanged.

# You may not use String#swapcase; write your own version of this method.

def swapcase(str)
  arry = str.chars

  new_arry = arry.map do |char|
    if char =~ /[a-z]/
      char.upcase
    elsif char =~ /[A-Z]/
      char.downcase
    else
      char
    end
  end
  new_arry.join('')
end

puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
