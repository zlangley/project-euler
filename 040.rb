# the average length of a number in [1, 200000] is at least 5
s = (1..200000).to_a.join
puts (0..6).map { |i| s[(10**i)-1].to_i }.inject(:*)
