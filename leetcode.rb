# # Running sum of 1d array
# Input: nums = [1,2,3,4]
# Output: [1,3,6,10]
# Explanation: Running sum is obtained as follows: [1, 1+2, 1+2+3, 1+2+3+4].

def running_sum(nums)
  sum = 0
  nums.map do |num|
    sum += num
  end
end

# #1678
# You own a Goal Parser that can interpret a string command. The command consists of an alphabet of "G", "()" and/or "(al)" in some order. The Goal Parser will interpret "G" as the string "G", "()" as the string "o", and "(al)" as the string "al". The interpreted strings are then concatenated in the original order.

def interpret(command)
    command.gsub('()', 'o').gsub('(al)', 'al')
end
