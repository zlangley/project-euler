def sum_of_squares(n)
  n*(2*n + 1)*(n + 1) / 6
end

def sigma(n)
  res, i = 0, 1
  while i*i <= n
    res += (n / i) * i * i
    res += i * (sum_of_squares(n/i) - sum_of_squares(n/(i+1))) if i != n/i
    i += 1
  end
  res
end

puts sigma(1_000_000_000_000_000) % 1_000_000_000
