def multiply(x, y)
  x * y
end

def square(num)
  multiply(num, num)
end

puts square(5) == 25
puts square(-8) == 64