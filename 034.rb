fact = [1]
1.upto(9) { |i| fact[i] = i * fact[i-1] }
puts (3..1000000).select { |n| 
  copy, sum = n, 0
  while copy > 0
    sum += fact[copy % 10]
    copy /= 10
  end
  sum == n
}.inject(:+)
