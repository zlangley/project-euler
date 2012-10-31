is_prime = Array.new(10000, true) # should be enough

i = 2
while i*i < 10000
  if is_prime[i]
    (i*i..10000).step(i) { |j| is_prime[j] = false }
  end
  i += 1
end

puts (-999..999).map { |a|
  (-999..999).map { |b|
    [0.upto(1/0.0).take_while { |n| is_prime[n*n + a*n + b] }.size, a*b]
  }.max
}.max[1]
