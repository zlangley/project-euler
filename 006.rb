puts (1..100).inject(:+)**2 - (1..100).inject(0) { |p, n| p + n*n }
