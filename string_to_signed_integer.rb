# Write a method that takes a String of digits, and returns the appropriate number as an integer. The String may have a leading + or - sign; 
# if the first character is a +, your method should return a positive number; if it is a -, your method should return a negative number. If 
# no sign is given, you should return a positive number.

def string_to_signed_integer(string)
  case string[0]
  when '-' then -string_to_integer(string[1..-1])
  when '+' then string_to_integer(string[1..-1])
  else          string_to_integer(string)
  end
end

string_to_signed_integer('4321') == 4321
string_to_signed_integer('-570') == -570
string_to_signed_integer('+100') == 100