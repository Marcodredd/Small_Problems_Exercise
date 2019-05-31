# Write a method that will take a short line of text, and print it within a box.

def print_in_box(text)
  text_length = text.length
  puts "+-#{'-' * text_length}-+"
  puts "| #{' ' * text_length} |"
  puts "| #{text} |"
  puts "| #{' ' * text_length} |"
  puts "+-#{'-' * text_length}-+"
end

print_in_box('To boldly go where no one has gone before.')
#+--------------------------------------------+
#|                                            |
#| To boldly go where no one has gone before. |
#|                                            |
#+--------------------------------------------+

print_in_box('')
#+--+
#|  |
#|  |
#|  |
#+--+
