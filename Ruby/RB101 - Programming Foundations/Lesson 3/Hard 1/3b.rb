# output:
# "one is: one"
# "two is: two"
# "three is: three"
# Variables were reassigned within the method, so variables outside the method are unaffected.

def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"