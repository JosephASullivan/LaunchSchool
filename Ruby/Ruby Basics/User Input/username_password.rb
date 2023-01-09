password = 'kisa'
username = 'joe'

loop do
  puts '>> Please enter your username:'
  username_input = gets.chomp
  puts '>> Please enter your password:'
  password_input = gets.chomp
  break if username_input == username && password_input == password

  puts 'wrong!'
end

puts "Welcome!"
