# There is an array with some numbers. All numbers are equal except for one. Try to find it!

# find_uniq([ 1, 1, 1, 2, 1, 1 ]) == 2
# find_uniq([ 0, 0, 0.55, 0, 0 ]) == 0.55
# It’s guaranteed that array contains at least 3 numbers.

# The tests contain some very huge arrays, so think about performance.
arr = [ 1, 1, 1, 2, 1, 1 ]

def find_uniq(arr)
  count_hash = arr.group_by do |num|
    num
  end
  count_hash.select{|key, hash| hash.count == 1 }.keys.first
end

print find_uniq(arr)


