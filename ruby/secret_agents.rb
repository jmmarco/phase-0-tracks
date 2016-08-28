# Students: Vince Roti, Juan Marco

# Pseudocode
# Encryption: Take a string and iterate through each letter (spaces included) and advance one a letter.

def encrypt(word)
	index = 0
	result = ""
	while index < word.length
		result += word[index].next
		index += 1
	end
	p result
end



# Pseudocode
# Decryption: Take a string, iteraste throuch each letter (spaces include) and go back one letter.


encrypt("abc") # should return "bcd"
# encrypt("zed") # should return "afe"
# decrypt("bcd") # should return "abc"
# decrypt("afe") # should return "zed"