def print_in_box(phrase)
  dashes = '-' * (phrase.length + 2)
  space = ' ' * (phrase.length + 2)
  outer_border = "+#{dashes}+"
  inner_border = "|#{space}|"
  puts outer_border
  puts inner_border
  puts "| #{phrase} |"
  puts inner_border
  puts outer_border
end

print_in_box('To boldly go where no one has gone before.')