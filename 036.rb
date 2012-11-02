require './euler'
puts (1..1000000).select { |n| n.to_s.palindrome? && n.to_s(2).palindrome? }.inject(:+)
