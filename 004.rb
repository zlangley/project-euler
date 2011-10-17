puts (100..999).map { |a| (a..999).map { |b| a*b }.select { |p| p.to_s == p.to_s.reverse } }.max
