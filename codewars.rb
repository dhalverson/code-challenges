# Exes and Ohs
# Check to see if a string has the same amount of 'x's and 'o's. The method must return a boolean and be case insensitive. The string can contain any char.
def XO(str)
  str.downcase.count('x') == str.downcase.count('o')
end

# Split in Parts 7kyu
# The aim of this kata is to split a given string into different strings of equal size (note size of strings is passed to the method)
def split_in_parts (s, part_length)
  split = s.chars.each_slice(part_length).map(&:join)
  split.join(' ')
end

# Filter the number
# Oh no! The number has been mixed up with the text. Your goal is to retreive the number from the text, can you return the number back to it's original state?
def filter_string(string)
  string.gsub(/['aA-zZ', ' ']/, '').to_i
end
