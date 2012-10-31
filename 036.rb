class String
  def palindrome?
    to_s == to_s.reverse
  end
end

puts (1..1000000).select { |n| n.to_s.palindrome? && n.to_s(2).palindrome? }.inject(:+)
