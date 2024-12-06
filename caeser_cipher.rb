def cipher(str, shifter)
  new_str = ''

  str.each_char do |char|
    new_str += shift_char(char, shifter)
  end

  new_str
end

def shift_char(char, shifts)
  if /[a-z]/.match?(char)
    shifter(char, 'a', shifts)
  elsif /[A-Z]/.match?(char)
    shifter(char, 'A', shifts)
  else
    char
  end
end

def shifter(char, base, shifts)
  (((char.ord - base.ord + shifts) % 26) + base.ord).chr
end

quote = "Kf sv, fi efk kf sv: kyrk zj kyv hlvjkzfe:
Nyvkyvi 'kzj efscvi ze kyv dzeu kf jlwwvi
Kyv jczexj reu riifnj fw flkirxvflj wfiklev,
Fi kf krbv ridj rxrzejk r jvr fw kiflscvj..."

puts cipher(quote, 9)
