def triangle(n)
  leading_spaces = n - 1
  until leading_spaces.negative?
    puts ' ' * leading_spaces + '*' * (n - leading_spaces)
    leading_spaces -= 1
  end
end

triangle(4)
triangle(17)
