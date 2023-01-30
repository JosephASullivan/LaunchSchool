def center_of(my_string)
  if my_string.size.odd?
    my_string[my_string.size/2]
  else
    my_string[my_string.size/2 - 1 .. my_string.size/2]
  end
end

puts center_of('I love ruby') == 'e'
puts center_of('Launch School') == ' '
puts center_of('Launch') == 'un'
puts center_of('Launchschool') == 'hs'
puts center_of('x') == 'x'