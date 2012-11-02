class Integer
  def pow_mod(n, m)
    if n == 0
      1
    elsif n.even?
      c = pow_mod(n/2, m)
      c*c % m
    else
      c = pow_mod(n/2, m)
      c*c*self % m
    end
  end

  def prime?(k=10)
    return true if self == 2
    return false if self <= 1 || self % 2 == 0
    s, d = 0, self - 1
    while d % 2 == 0
      d /= 2
      s += 1
    end
    k.times do
      a = rand(2..self - 2)
      x = a.pow_mod(d, self)
      next if x == 1 or x == self-1
      1.upto(s-1) do |r|
        x = x*x % self
        return false if x == 1
        break if x == self-1
      end
      return false if x != self-1
    end
    true
  end
end

max, n = 0, 600851475143
2.upto(Math.sqrt(n).to_i) do |i|
  if n % i == 0
    max = [max, i].max if i.prime?
    max = [max, n/i].max if (n/i).prime?
  end
end
puts max
