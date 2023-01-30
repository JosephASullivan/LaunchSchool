def stringy(num)
  output_sequence = ''
  num.times do |num|
    output_sequence << (num.even? ? '1' : '0')
  end
  output_sequence
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

# Further exploration

def stringy_mod(num, starts_with = 1)
  raise 'Invalid input' unless starts_with == 0 || starts_with == 1

  output_sequence = ''
  num.times do |num|
    output_sequence << (num.odd? ^ (starts_with == 1) ? '1' : '0') # Using XOR operator
  end
  output_sequence
end

# puts stringy_mod(6,2) # Raises exception
puts stringy_mod(8,0)
puts stringy_mod(3)
puts stringy_mod(3,1)