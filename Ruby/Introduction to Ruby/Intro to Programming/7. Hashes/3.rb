family = {  uncle: "bob",
            sister: "jane",
            brother: "frank",
            aunt: "mary"
          }

puts "keys:", family.keys
puts "values", family.values
family.each { |k, v| puts "#{v} is my #{k}"}