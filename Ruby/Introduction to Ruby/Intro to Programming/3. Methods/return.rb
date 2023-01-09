def add_three(number)
  sum = number + 3
  puts sum
  sum
end

returned_value = add_three(4)
puts returned_value

add_three(5).times { puts "will this work?" }