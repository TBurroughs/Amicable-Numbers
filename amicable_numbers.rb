def sum_factors(n)
  sum = 0
  for factor in 1..(n / 2)
    if n % factor == 0
      sum += factor
    end
  end
  sum1 = 0
  for factor in 1..(sum / 2)
    if sum % factor == 0
    sum1 += factor
    end
  end
  if sum1 == n && n < sum
    print n," ", sum, "\n"
  end
end
print "Enter upper bound for perfect number search:"
upper_bound = gets.chomp.to_i
for n in 2..upper_bound
  k = sum_factors(n)
end
