def sum_factors(n)
  sum1 = 0
  # Find the sum (sum1) of the factors of n
  for factor in 1..(n / 2)
    if n % factor == 0
      sum1 += factor
    end
  end
  sum2 = 0
  # Find the sum (sum2) of all the factors of sum1
  for factor in 1..(sum1 / 2)
    if sum1 % factor == 0
    sum2 += factor
    end
  end
  # If n is equal to sum2 print the pair of amicable numbers
  if sum2 == n && n < sum1
    print n," ", sum1, "\n"
  end
end

print "Enter a number a number greater than 1000 to find an amicable pair:"
upper_bound = gets.chomp.to_i
for n in 1..upper_bound
  sum_factors(n)
end
