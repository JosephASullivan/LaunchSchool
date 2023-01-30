def get_sum(num)
  sum = 0
  (1..num).each { |i| sum += i }
  sum
end

def get_product(num)
  product = 1
  (2..num).each { |i| product *= i }
  product
end

puts 'Please enter an integer greater than 0:'
num = gets.chomp.to_i
puts "Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp
result = case operation
         when 's'
           get_sum(num)
         when 'p'
           get_product(num)
         else
           raise 'Invalid operation.'
         end

puts "The result is #{result}."
