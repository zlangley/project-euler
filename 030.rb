puts (2..350000).select { |n| n.to_s.chars.map { |c| c.to_i**5 }.inject(:+) == n }.inject(:+)
