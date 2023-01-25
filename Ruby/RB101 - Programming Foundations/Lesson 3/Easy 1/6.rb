# First method
famous_words = "seven years ago..."
addition = "Four score and "

famous_words.insert(0, addition)
puts famous_words

# Second method
famous_words = "seven years ago..."
addition = "Four score and "

famous_words = addition << famous_words
puts famous_words