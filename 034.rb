fact = [1]
1.upto(9) { |i| fact[i] = i * fact[i-1] }
puts (3..1000000).select { |n| n.to_s.chars.map { |c| fact[c.to_i] }.inject(:+) == n }.inject(:+)
