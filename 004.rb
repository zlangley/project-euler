puts (100..999).flat_map { |a| (a..999).map { |b| a*b }.select { |c| c.to_s == c.to_s.reverse } }.max
