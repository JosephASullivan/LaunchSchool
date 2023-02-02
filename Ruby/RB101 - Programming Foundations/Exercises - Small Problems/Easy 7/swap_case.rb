def swapcase(string)
  new_string = ''
  string.each_char do |char|
    new_char = char.upcase
    new_char.downcase! if char == new_char
    new_string << new_char
  end
  new_string
end

puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'