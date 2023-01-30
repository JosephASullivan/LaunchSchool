name = 'Bob'
save_name = name
name.upcase!
puts name, save_name # 'BOB', 'BOB'

# The original string was mutated