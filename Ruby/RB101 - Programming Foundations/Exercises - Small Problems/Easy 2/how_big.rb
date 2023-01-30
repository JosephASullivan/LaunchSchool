puts 'What is the length of the room in meters?'
length = gets.chomp.to_i
puts 'What is the width of the room in meters?'
width = gets.chomp.to_i
area = length * width
area_square_feet = area * 10.7639.round(2)
puts "The area of the room is #{area} meters (#{area_square_feet} square feet)"