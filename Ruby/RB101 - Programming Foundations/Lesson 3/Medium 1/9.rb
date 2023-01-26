def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

# Returns 'no'
bar(foo)

puts bar(foo)