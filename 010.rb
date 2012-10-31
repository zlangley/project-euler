sum = 0
is_prime = Array.new(2_000_000, true)

i = 2
while i*i < 2_000_000
  if is_prime[i]
    sum += i
    (i*i..2_000_000).step(i) { |j| is_prime[j] = false }
  end
  i += 1
end
i.upto(2_000_000) { |j| sum += j if is_prime[j] }
puts sum
