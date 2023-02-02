def staggered_case(string)
  new_string = ''
  string.size.times { |i| new_string << (i.even? ? string[i].upcase : string[i].downcase) }
  new_string
end

puts staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
puts staggered_case('ALL_CAPS') == 'AlL_CaPs'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
