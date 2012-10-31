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

primes = primes_less_than(1000000)

count = 0
primes.each do |p|
  good = true
  s = p.to_s
  0.upto(s.size - 2) do |i|
    if !primes.bsearch((s[i+1..-1] + s[0..i]).to_i)
      good = false 
      break
    end
  end
  count += 1 if good
end
puts count
