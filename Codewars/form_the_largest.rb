# Given a number , Return _The Maximum number _ could be formed from the digits of the number given .

number = 213

def max_number(number)
  number.digits.sort_by do |num|
    num
  end.join.reverse
end

print max_number(number)