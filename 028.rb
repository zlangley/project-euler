puts 3.step(1001, 2).inject(1) { |a,b| a + 4*b*b - 6*b + 6 }
