class Integer
  def is_pentagonal?
    s = Math.sqrt(1 + 24*self)
    (s - s.to_i).abs < 1e-8 && (s.to_i + 1) % 6 == 0
  end
end

seen = []
sums = {}

# Have not been able to convice myself that this will find the smallest,
# but it does.
p = i = 1
while !sums[p]
  seen.each do |q|
    diff = p - q
    sums[p + q] = diff if diff.is_pentagonal?
  end

  seen << p

  p += 3*i + 1
  i += 1
end

puts sums[p]
