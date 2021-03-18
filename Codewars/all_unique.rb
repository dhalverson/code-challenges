# Write a program to determine if a string contains only unique characters. Return true if it does and false otherwise.

# The string may contain any of the 128 ASCII characters. Characters are case-sensitive, e.g. 'a' and 'A' are considered different characters.



def unique_chars(char_string)
  string_array = char_string.chars
  string_array.count == string_array.uniq.count
end


print unique_chars('abcdef')