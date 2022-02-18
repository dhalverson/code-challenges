# Given an integer x, return true if x is palindrome integer.

# An integer is a palindrome when it reads the same backward as forward.

# For example, 121 is a palindrome while 123 is not.

def is_palindrome(x)
    x == x.to_s.reverse
end

print is_palindrome(121)

