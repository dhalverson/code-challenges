# The Ones' Complement of a binary number is the number obtained by swapping all the 0s for 1s and all the 1s for 0s. For example:

# ones_complement(1001) = 0110
# ones_complement(1001) = 0110

# For any given binary number,formatted as a string, return the Ones' Complement of that number.

def ones_complement(binary_number)
  binary_number.to_s.gsub(/[10]/, '1' => '0', '0' => '1') 
end

p ones_complement(1001)