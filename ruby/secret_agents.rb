# Students: Vince Roti, Juan Marco

# Pseudocode
# Encryption: Take a string and iterate through each letter (spaces included) and advance one a letter

def encrypt(word)
    index = 0
    result = ""
    # Iterate through each letter in the word
    while index < word.length
        # If that letter happens to be an edge case
        if word[index] == "z"
            result += "a"
        # For each letter go forward one character
        else
            result += word[index].next
        end
    index += 1
    end
    # Print the encrypted word
    p result
end

# Pseudocode
# Decryption: Take a string, iterate throuch each letter (spaces included) and go back one letter

def decrypt(word)
    result = ""
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    # Make the word and array.
    word = word.split("")

    # Iterate through each letter in the array.
    for letter in word do
        index = 0
        # For a given letter, iterate through the alphabet and decrypt each one
        while index < alphabet.length
            if letter == alphabet[index]
                result += alphabet[index -1]
            # Take into account all edge cases
            elsif letter == "a"
                result = "z"
            elsif letter == "z"
                result = "a"
            end
        index += 1
        end
    end
    # Print the decrypted word
    p result
end

# encrypt("abc") # should return "bcd"
# encrypt("zed") # should return "afe"
# decrypt("bcd") # should return "abc"
# decrypt("afe") # should return "zed"

# decrypt(encrypt("swordfish"))