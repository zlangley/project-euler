def num_divisors(n)
  ans = 1
  while n % 2 == 0
    ans += 1
    n /= 2
  end

  i = 3
  while i <= n
    count = 1
    while n % i == 0
      count += 1
      n /= i
    end
    ans *= count
    i += 2
  end
  ans
end

num, i = 1, 1
while num_divisors(num) <= 500
  i += 1
  num += i
end
puts num
