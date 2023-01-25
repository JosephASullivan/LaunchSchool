advice = "Few things in life are as important as house training your pet dinosaur."
new_string = advice.slice!(0, advice.index('house'))

puts 'new string: ' + new_string
puts 'old string: ' + advice