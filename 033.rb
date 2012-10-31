num = denom = 1
10.upto(99) do |a|
  1.upto(9) do |d|
    if a*d == (a/10)*(a%10*10 + d)
      num *= a/10
      denom *= d
    end
  end
end
puts denom / denom.gcd(num)
