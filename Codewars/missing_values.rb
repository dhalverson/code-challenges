# You are given an array of positive ints where every element appears three times, except one that appears only once (let's call it x) and one that appears only twice (let's call it y).

# Your task is to find x * x * y.

value_array = [1, 1, 1, 2, 2, 3]

def missing_values(value_array)
  keys_hash = value_array.group_by do |number|
    number
  end
  x = keys_hash.select{|key, hash| hash.count == 1}.keys.first.to_i
  y = keys_hash.select{|key, hash| hash.count == 2}.keys.first.to_i
  x * x * y
end

print missing_values(value_array)