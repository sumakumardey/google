# Write a method to decide if two strings are anagrams or not


def anagrams(str1,str2)
  number_of_unique_characters_str1 = 0
  number_of_completed_characters_str2 = 0
  len1 = str1.length - 1
  len2 = str2.length - 1
# not anagram if length is not equal
  return false if len1 != len2
  hash_characters = Hash.new(0)
  str1.each_char do |c|
    if hash_characters[c] == 0
      number_of_unique_characters_str1 += 1
    end
    hash_characters[c] += 1
  end
  str2.each_char do |car|
    if hash_characters[car] == 0
      return false
    else
      hash_characters[car] -= 1
      if hash_characters[car]==0
        number_of_completed_characters_str2 += 1
      end
    end
  end
  if(number_of_completed_characters_str2 == number_of_unique_characters_str1)
  return true
  end
end