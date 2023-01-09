continue = true
while continue
  puts "type 'STOP' to stop, or anything else to repeat"
  input = gets.chomp
  puts "you typed: #{input}"
  continue = false if input == "STOP"
end

