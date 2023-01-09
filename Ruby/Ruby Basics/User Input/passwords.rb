password = 'kisa'

loop do
  puts '>> Please enter your password:'
  break if gets.chomp == password

  puts 'wrong!'
end

puts "Welcome!"
