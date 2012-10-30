class Integer
  def divisors
    d = []
    1.upto(Math.sqrt(self).round) do |i|
      if self % i == 0
        d << i
        d << self / i if self / i != i
      end
    end
    d
  end
end

sum = 0
1.upto(10000) do |n|
  m = n.divisors.inject(:+) - n
  if n < m && m.divisors.inject(:+) - m == n
    sum += n + m
  end
end
puts sum
