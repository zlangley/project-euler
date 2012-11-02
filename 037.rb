require './euler'

# stretch the size of primes until we see all 11
start = 4
size = 100000
count, sum = 0, 0
while count < 11
  primes = Math.primes_less_than(size)
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
