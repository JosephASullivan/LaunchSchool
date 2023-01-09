num = 6745
thousands = num / 1000
hundreds = num % 1000 / 100
tens = num % 100 /10
ones = num % 10
puts "The thousands digit is #{thousands}"
puts "The hundreds digit is #{hundreds}"
puts "The tens digit is #{tens}"
puts "The ones digit is #{ones}"