def check_for_value(hash, v) # v is the value we are looking for
  hash.value?(v) ? "present" : "absent"
end

family = {  uncle: "bob",
            sister: "jane",
            brother: "frank",
            aunt: "mary"
          }

puts check_for_value(family,"mary") # present
puts check_for_value(family,"maryl") # absent