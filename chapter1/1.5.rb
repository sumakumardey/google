# Write a method to replace all spaces in a string with ‘%20’

# O(n)
def replace_spaces(str)
  len = str.length - 1
  i = 0;
  while(i<=len) do
    # comparing with Ascii value of space
    if str[i].ord == 32
      str[i] = "%20"
      i = i + 2
      len = len + 2
    end
    i =  i+1
  end
  str
end