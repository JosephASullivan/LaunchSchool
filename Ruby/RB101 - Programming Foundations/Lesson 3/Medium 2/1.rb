a = "forty two"
b = "forty two"
c = a

puts a.object_id # 60
puts b.object_id # 80
puts c.object_id # 60

c.tr!('o','p')
puts a
puts a.object_id
puts c
puts c.object_id