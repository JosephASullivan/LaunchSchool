puts "input number"
num = gets.chomp.to_i

if num < 0
  puts "Don't enter negative numbers!"
elsif num <= 50
  puts "#{num} is between 0 and 50"
elsif num <= 100
  puts "#{num} is between 51 and 100"
else
  puts "#{num} is over 100"
end
