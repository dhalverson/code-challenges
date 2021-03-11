# Write a function that takes a positive integer n, sums all the cubed values from 1 to n, and returns that sum.

# Assume that the input n will always be a positive integer.

def sum_cubes(n)
  values = (1..n).to_a
  values.sum do |num|
    num * num * num
  end
end

print sum_cubes(3)
  # it "Testing for 1" do Test.assert_equals(sum_cubes(1), 1) end
  # it "Testing for 2" do Test.assert_equals(sum_cubes(2), 9) end
  # it "Testing for 3" do Test.assert_equals(sum_cubes(3), 36) end