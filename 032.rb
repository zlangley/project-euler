require './euler'

puts (2..100).flat_map { |a|
  (a+1..5000).map { |b|
    c = a * b
    s = a.to_s + b.to_s + c.to_s
    c if s.size == 9 && s.pandigital?
  }.compact
}.uniq.inject(:+)
