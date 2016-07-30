# Write code to reverse a C-Style String (C-String means that “abcd” is represented as  ve characters, including the null character )

# Intial Assumption
# Time complexity O(n)
def reverse_string(str)
  len = str.length - 1
  for i in 0..(len/2) 
    temp = str[i]
    str[i] = str[len - i]
    str[len-i] = temp
  end
  puts str
end