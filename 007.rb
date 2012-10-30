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
# pi(n) > n / ln(n), so 10001st prime is less than 116684
puts primes_less_than(116684).at(10000)
