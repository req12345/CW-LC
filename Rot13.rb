=begin

DESCRIPTION:
ROT13 is a simple letter substitution cipher that replaces a letter with the letter 13 letters after it in the alphabet. ROT13 is an example of the Caesar cipher.

Create a function that takes a string and returns the string ciphered with Rot13.
If there are numbers or special characters included in the string,
they should be returned as they are. Only letters from the latin/english alphabet should be shifted,
like in the original Rot13 "implementation".

=end

def rot13(string)
  alphabet = ('A'..'Z').to_a + ('A'..'Z').to_a + ('a'..'z').to_a + ('a'..'z').to_a
  arr = string.split('')
  arr.each_index do |i|
    next if alphabet.exclude?(arr[i])
    
    arr[i] = alphabet[alphabet.index(arr[i]) + 13]
  end   
  
  arr.join('')
end

def rot13(string)
  string.tr("A-Za-z", "N-ZA-Mn-za-m")
end
