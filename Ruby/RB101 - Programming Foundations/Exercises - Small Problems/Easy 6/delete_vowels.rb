VOWELS = 'aeiou'

def vowel?(char)
  VOWELS.include?(char) || VOWELS.upcase.include?(char)
end

def remove_vowels(strings)
  new_array = []
  strings.each do |string|
    new_string = ''
    string.each_char { |char| new_string << char unless vowel?(char) }
    new_array << new_string
  end
  new_array
end

puts remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
puts remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
puts remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']