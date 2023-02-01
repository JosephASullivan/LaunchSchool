def crunch(string)
  crunched_string = ''
  string.each_char { |char| crunched_string << char if char != crunched_string[-1] }
  crunched_string
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''
