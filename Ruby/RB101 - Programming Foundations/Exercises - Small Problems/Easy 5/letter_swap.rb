def swapify_word(word)
  first_letter = word[0]
  word[0] = word[-1]
  word[-1] = first_letter
  word
end

def swap(string)
  new_string = ''
  string.split(' ').each { |word| new_string << swapify_word(word) + ' ' }
  new_string.chop
end

puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'