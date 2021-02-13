def odd_or_even(array)
  if array.sum.even?
    return 'even'
  elsif array.sum.odd?
    return 'odd'
  end
end

print odd_or_even([0,1,2])