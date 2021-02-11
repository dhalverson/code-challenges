# Task
# Given an integer n, find the maximal number you can obtain by deleting exactly one digit of the given number.

# Example
# For n = 152, the output should be 52;

# For n = 1001, the output should be 101.

# Input/Output
# [input] integer n

# Constraints: 10 ≤ n ≤ 1000000.

# [output] an integer

numbers = 3010
010
310
300

def delete_digit(numbers)
  number_array = numbers.digits.reverse
  index_counter = 0
  result = []
  number_array.size.times do
    number_array.reject.with_index do |num, index|
      result << index == index_counter
      index_counter += 1
    end
  end
  result
end

print delete_digit(numbers)

