puts 'What is your age?'
current_age = gets.chomp.to_i
puts 'At what age do you want to retire?'
retirement_age = gets.chomp.to_i
years_until_retirement = retirement_age - current_age

current_year = Time.now.year
retirement_year = current_year + years_until_retirement

puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "Only #{years_until_retirement} years of work to go!"