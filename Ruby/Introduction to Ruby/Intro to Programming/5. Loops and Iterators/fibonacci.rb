def fibonacci(num)
  if num < 2
    num
  else
    fibonacci(num-1) + fibonacci(num-2)
  end
end

puts fibonacci(6)

for x in 1..10
  puts "#{x}. #{fibonacci(x)}"
end