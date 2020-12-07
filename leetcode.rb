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

# 1431 Kids With the Greatest Number of Candies
# Given the array candies and the integer extraCandies, where candies[i] represents the number of candies that the ith kid has.
# For each kid check if there is a way to distribute extraCandies among the kids such that he or she can have the greatest number of candies among them. Notice that multiple kids can have the greatest number of candies.
def kids_with_candies(candies, extra_candies)
    max_candy = candies.max_by do |candy|
        candy 
    end
    candies.map do |candy|
       total = candy + extra_candies  
        if total >= max_candy
           true
        else
            false
        end
    end
end
