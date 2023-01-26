def factors(number)
  divisor = number
  factors = []
  while divisor > 0
    is_integer = number % divisor == 0 # Check if division yields an integer (ie is there a remainder?)
    factors << number / divisor if is_integer
    divisor -= 1
  end
  factors # Make sure the method returns `factors`
end

puts factors 24