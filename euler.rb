class Integer
  def mod_pow(n, m)
    if n == 0
      1
    elsif n.even?
      c = mod_pow(n/2, m)
      c*c % m
    else
      c = mod_pow(n/2, m)
      c*c*self % m
    end
  end

  # Miller-Rabin
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
      x = a.mod_pow(d, self)
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

class String
  def pandigital?
    each = Array.new(size+1, false)
    self.chars.each { |c| each[c.to_i] = true }
    !each[1..-1].include?(false) && !each[0] && each.size == self.size + 1
  end

  def palindrome?
    to_s == to_s.reverse
  end
end

module Math
  # Sieve of Eratosthenes
  def self.primes_less_than(n)
    s = (0..n).to_a
    s[0] = s[1] = nil
    s.each do |p|
      next unless p
      break if p * p > n
      (p*p).step(n, p) { |m| s[m] = nil }
    end
    s.compact
  end
end

class Array
  def bsearch(e)
    low, high = 0, size-1
    while low <= high
      mid = (low + high) / 2
      if self[mid] < e
        low = mid + 1
      elsif self[mid] > e
        high = mid - 1
      else
        return true
      end
    end
    false
  end
end

