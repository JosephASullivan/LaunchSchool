puts 'How much was the bill?'
bill = gets.chomp.to_f
puts 'Enter a tip rate:'
tip_rate = gets.chomp.to_f/100
tip = bill * tip_rate
total = bill + tip
puts "The tip will be $#{sprintf("%.2f",tip)}"
puts "The total will be $#{sprintf("%.2f",total)}"