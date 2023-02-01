def get_fibonacci_sequence(length)
  sequence = [1, 1]
  sequence << sequence[-1] + sequence[-2] until sequence.size == length
  sequence
end

def find_fibonacci_index_by_length(number_of_digits)
  sequence = [1, 1]
  index = 2
  loop do
    index += 1
    sequence << sequence[-1] + sequence[-2]
    length = sequence[-1].to_s.size
    return index if length == number_of_digits
  end
end

puts find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
puts find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847