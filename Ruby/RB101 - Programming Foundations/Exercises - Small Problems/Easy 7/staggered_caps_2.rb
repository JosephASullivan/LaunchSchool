def staggered_case(string)
  new_string = ''
  is_cap = true # Determines whether the current character should be capitalized
  string.each_char do |char|
    if char =~ /[a-z]/i
      new_string << (is_cap ? char.upcase : char.downcase)
      is_cap = !is_cap
    else
      new_string << char
    end
  end
  new_string
end

puts staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
puts staggered_case('ALL CAPS') == 'AlL cApS'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'