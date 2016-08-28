# Students: Vince Roti, Juan Marco

# Pseudocode
# Encryption: Take a string and iterate through each letter (spaces included) and advance one a letter.

def encrypt(word)
  index = 0
  result = ""
  while index < word.length
    # For each letter go forward one character
    result += word[index].next
    index += 1
  end
  p result
end

# Pseudocode
# Decryption: Take a string, iteraste throuch each letter (spaces include) and go back one letter.

def decrypt(word)
  result = ""
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  # Make the word and array
  word = word.split("")
  # Check if letter is in the alphabet
  for letter in word do
      index = 0
      puts "current letter is: #{letter}"
      while index < alphabet.length
        if letter == alphabet[index]
          result += alphabet[index -1]
        elsif letter == "a"
          result = "z"
        elsif letter == "z"
          result = "a"
        end
        index += 1
      end
  end
  p result
end

  #encrypt("abc") # should return "bcd"
  # encrypt("zed") # should return "afe"
  #decrypt("bcd") # should return "abc"
  decrypt("afe") # should return "zed"
  decrypt("efg") # should return "def"
