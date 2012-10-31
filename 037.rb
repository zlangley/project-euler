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

def primes_less_than(n)
  s = (0..n).to_a
  s[0] = s[1] = nil
  s.each do |p|
    next unless p
    break if p * p > n
    (p*p).step(n, p) { |m| s[m] = nil }
  end
  s.compact
end

# stretch the size of primes until we see all 11
start = 4
size = 100000
count, sum = 0, 0
while count < 11
  primes = primes_less_than(size)
  primes[start..-1].each do |p|
    good = true
    prime = p
    while prime > 10 && good
      prime /= 10
      good = good && primes.bsearch(prime)
    end
    s = p.to_s
    while s.size > 1 && good
      s = s[1..-1]
      good = good && primes.bsearch(s.to_i)
    end
    sum += p if good
    count += 1 if good
    break if count == 11
  end
  start = primes.size
  size *= 10
end
puts sum
