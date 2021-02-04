# Given an array of integers, find the one that appears an odd number of times.

# There will always be only one integer that appears an odd number of times.

seq = [20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5]

def find_it(seq)
  integer_hash = seq.group_by do |num|
    num
  end
  odd_totals = integer_hash.select do |number, array|
    array.count.odd?
  end
  odd_totals.keys.first
end

print find_it(seq)