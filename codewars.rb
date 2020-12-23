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


# Lucky Number
# Write a function to find if a number is lucky or not. If the sum of all digits is 0 or multiple of 9 then the number is lucky.
def is_lucky(n)
  sum = n.digits.reduce(0) { |acc, num| acc + num }
    if sum == 0 || sum % 9 == 0
      true
    else
      false
    end
end

# Character Counter
# You are going to be given a word. Your job will be to make sure that each character in that word has the exact same number of occurrences. You will return true if it is valid, or false if it is not.

def validate_word(word)
  chars = word.downcase.chars
  result = chars.group_by do |char|
      chars.count(char)
  end
  if result.keys.count == 1
    true
  else
    false
  end
end


# Min Max
# In this little assignment you are given a string of space separated numbers, and have to return the highest and lowest number.

def high_and_low(numbers)
  sorted = numbers.split(' ').sort_by(&:to_i)
  "#{sorted[-1]} #{sorted[0]}"
end


# Sum of positive
# You get an array of numbers, return the sum of all of the positives ones.
def positive_sum(arr)
  result = 0
  arr.each do |num|
    result += num unless num < 0
  end
  result
end

# Responsible Drinking
# Codewars Bar recommends you drink 1 glass of water per standard drink so you're not hungover tomorrow morning.
def hydrate(s)
  total = 0
  s.split(',').sum do |drink|
   total += drink.to_i
  end
  if total == 1
    "#{total} glass of water"
  else
    "#{total} glasses of water"
  end
end


# All Start Code Challenge #22
# Create a function called toTime() that takes an integer argument of seconds and converts the value into a string describing how many hours and minutes comprise that many seconds.

# Any remaining seconds left over are ignored.

def to_time(seconds)
  hours = seconds / 3600
  minutes = (seconds / 60) % 60
  "#{hours} hour(s) and #{minutes} minute(s)"
end

# Shortest Word
# Get length of shortest word in a string

def find_short(s)
   s.split.sort_by(&:length)[0].length
end

# Defangled IP Address
# Replace . with [.]
def defang_i_paddr(address)
    address.gsub(".", "[.]")
end

# Reverse Sort
def descending_order(n)
  n.digits.sort.reverse.join.to_i
end

# Min numbers add
def sum_two_smallest_numbers(numbers)
  sorted = numbers.sort
  sorted[0] + sorted[1]
end

# Find the stray number
def stray(numbers)
  numbers.min_by {|n| numbers.count(n) }
end

# Two Oldest Ages
def two_oldest_ages(ages)
  ages = ages.sort
  [ages[-2], ages[-1]]
end

or

def two_oldest_ages(ages)
  ages.sort.last(2)
end