require './euler'

# pi(n) > n / ln(n), so 10001st prime is less than 116684
puts Math.primes_less_than(116684).at(10000)
