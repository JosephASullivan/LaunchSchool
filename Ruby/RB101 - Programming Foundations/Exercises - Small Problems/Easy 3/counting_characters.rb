puts 'Please write word or multiple words:'
answer = gets.chomp
count = 0
answer.size.times { |i| count += 1 if answer[i] != ' ' }
puts "There are #{count} characters in '#{answer}'"
