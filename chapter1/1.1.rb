# Implement an algorithm to determine if a string has all unique characters What if you can not use additional data structures?

# Time complexity is O(n)
def is_unique_characters(string_val)
  unique_char_set = Hash.new(false)
  string_val.each_char do |c|
    unless unique_char_set[c]
      unique_char_set[c] = true
    else
      return false
    end
  end
  return true
end


# Reduce the space complexity using bit vector
# assumption the characters are from smaller case a to z
def using_bit_vector(string_val)
  checker = 0
  string_val.each_char do |c|
    val = (c.ord - "a".ord)
    return false if (checker & (1 << val)) > 0  
    checker |= val
  end
  return true
end


