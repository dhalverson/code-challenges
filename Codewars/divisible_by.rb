def divisible_by(n, *more)
  more.all? do |divisor|
    n % divisor == 0
  end
end

p divisible_by(10, 2, 5, 10)