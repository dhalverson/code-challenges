# Exes and Ohs
# Check to see if a string has the same amount of 'x's and 'o's. The method must return a boolean and be case insensitive. The string can contain any char.
def XO(str)
  str.downcase.count('x') == str.downcase.count('o')
end

# Split in Parts 7kyu
def split_in_parts (s, part_length)
  split = s.chars.each_slice(part_length).map(&:join)
  split.join(' ')
end