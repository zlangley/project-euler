MOD = 1000000000 
def sum_of_squares(n)
  n*(2*n + 1)*(n + 1) / 6
end

def next_square(n)
  i = 1
  while i*i <= n
    i += 1
  end
  i * i
end

def sigma(n)
  if n == 1
    1
  else
    res = 2 * sigma(n / 2)
    i = 1
    nsq = next_square(n)
    while i*i <= nsq
      other = n / i
      if other % 2 == 1 && i != nsq / i && i != other
        res += i*i
        res %= MOD
      end
      if i % 2 == 0
        last = n / (i - 1)
        res += sum_of_squares(last) - sum_of_squares(other)
        res %= MOD
      end
      i += 1
    end
    res
  end
end

puts sigma(1000000000000000)
