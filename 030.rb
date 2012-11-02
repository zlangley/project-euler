puts (2..350000).select { |n| 
  copy, sum = n, 0
  while copy > 0
    sum += (copy % 10)**5
    copy /= 10
  end
  sum == n
}.inject(:+)
