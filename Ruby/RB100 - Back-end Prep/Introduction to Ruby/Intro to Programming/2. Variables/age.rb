puts "How old are you?"
age = gets.chomp.to_i
def get_future_age (current_age, years_added)
    "In #{years_added} years you will be #{age + years_added}"
end
puts get_future_age(age, 10)
puts get_future_age(age, 20)
puts get_future_age(age, 30)
puts get_future_age(age, 40)