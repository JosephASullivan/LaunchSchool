array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value } # Mutates array2. The arrays are different objects with 
                                        # references to the same string objects.
array1.each { |value| value.upcase! if value.start_with?('C', 'S') } # Mutates some of the strings, affecting both arrays
puts array2 == %w(Moe Larry CURLY SHEMP Harpo CHICO Groucho Zeppo)