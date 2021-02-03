# Given a string, turn each character into its ASCII character code and join them together to create a number - let's call this number total1:

# 'ABC' --> 'A' = 65, 'B' = 66, 'C' = 67 --> 656667
# Then replace any incidence of the number 7 with the number 1, and call this number 'total2':

# total1 = 656667
#               ^
# total2 = 656661
#               ^
# Then return the difference between the sum of the digits in total1 and total2:

#   (6 + 5 + 6 + 6 + 6 + 7)
# - (6 + 5 + 6 + 6 + 6 + 1)
# -------------------------
#                        6

input_string = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'

def calc(input_string)
  result = []
  input_string.chars.each do |char|
    result << char.ord
  end
  total1 = result.join.split('').map(&:to_i).sum
  total2 = result.join.gsub(/7/,'1').split('').map(&:to_i).sum
  total1 - total2
end

print calc(input_string)