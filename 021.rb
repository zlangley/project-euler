def divisor_sum(n)
  sum, i = 1, 2
  while i*i <= n
    if n % i == 0
      sum += i
      sum += n/i if i != n/i
    end
    i += 1
  end
  sum
end

puts (1..10000).inject(0) { |a,n|
  m = divisor_sum(n)
  if n < m && divisor_sum(m) == n
    a + n + m
  else
    a
  end
}
