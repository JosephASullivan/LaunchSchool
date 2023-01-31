def short_long_short(string1, string2)
  string1_longer = string1.size > string2.size
  long = string1_longer ? string1 : string2
  short = !string1_longer ? string1 : string2
  short + long + short
end

puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"