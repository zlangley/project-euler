puts (1..1000).map { |p| [(1..p/3).count { |a| p*(p-2*a) % (2*(p-a)) == 0 }, p] }.max[1]
