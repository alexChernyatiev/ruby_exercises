def find_missing_letter(input)
    alphabet = "abcdefghijklmnopqrstuvwxyz";
    index = alphabet.index(input[0].downcase)
    input.each { |letter|
      letter.downcase == alphabet[index] ? index += 1 : break;
    }
    return input[0] == input[0].upcase ?   alphabet[index].upcase : alphabet[index]
end

#Best:
 #((arr.first..arr.last).to_a - arr).first

#Test.assert_equals(find_missing_letter(["a","b","c","d","f"]), "e")
#Test.assert_equals(find_missing_letter(["O","Q","R","S"]), "P")
#Test.assert_equals(find_missing_letter(["b","d"]), "c")
#Test.assert_equals(find_missing_letter(["a","b","d"]), "c")
#Test.assert_equals(find_missing_letter(["b","d","e"]), "c")