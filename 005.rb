primes = [2, 3, 5, 7, 11, 13, 17, 19]
puts primes.map { |i| i**Math.log(20, i).to_i }.inject(:*)
