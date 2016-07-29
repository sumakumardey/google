# Design an algorithm and write code to remove the duplicate characters in a string without using any additional buffer NOTE: One or two additional variables are  ne An extra copy of the array is not
# FOLLOW UP
# Write the test cases for this method

# Complexity is O(n^2)
def remove_duplicate_characters(str)
  str = str.strip
  len = str.strip.length - 1
  return if len < 2
  tail = 1
  j = 0
  for i in 1..len
    for j in  0..len
      break if(str[i] == str[j]) 
    end 
    if(j == tail)
      str[tail] = str[i]
      tail = tail + 1
    else
      str[tail] = "\0"
      tail = tail + 1
    end
  end
  puts str
end

