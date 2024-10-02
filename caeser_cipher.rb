def cipher(str, shifter)
  new_str = ''

  str.each_char do |char|
    new_str += shift_char(char, shifter)
  end

  new_str
end

def shift_char(char, shifts)
  if char =~ /[a-z]/
    ((char.ord - 'a'.ord + shifts) % 26 + 'a'.ord).chr
  elsif char =~ /[A-Z]/
    ((char.ord - 'A'.ord + shifts) % 26 + 'A'.ord).chr
  else
    char
  end
end

puts cipher('Hello, Wolrd!', 3)
