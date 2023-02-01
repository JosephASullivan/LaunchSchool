def halvsies(arr)
  split_point = arr.size.odd? ? arr.size/2 : arr.size/2 - 1
  [ arr[..split_point], arr[split_point + 1..] ]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]