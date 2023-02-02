def interleave(arr1, arr2)
  combined = []
  arr1.size.times do |i|
    combined << arr1[i]
    combined << arr2[i]
  end
  combined
end

puts interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']