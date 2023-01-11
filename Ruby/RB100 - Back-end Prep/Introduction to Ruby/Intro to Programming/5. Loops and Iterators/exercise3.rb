def countdown_from(num)
  if num != num.to_i
    puts "You must input an integer!"
  elsif num < 0
    puts "The starting integer must not be negative!"
  else
    puts num
    if num > 0
      countdown_from(num - 1)
    end
  end
end

countdown_from("meow")
countdown_from(11.4)
countdown_from(-5)
countdown_from(7)