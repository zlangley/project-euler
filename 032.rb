class String
  def pandigital?
    each = Array.new(10, false)
    self.chars.each { |c| each[c.to_i] = true }
    !each[1..-1].include?(false)
  end
end

puts (2..100).map { |a|
  (a+1..5000).map { |b|
    c = a * b
    s = a.to_s + b.to_s + c.to_s
    c if s.size == 9 && s.pandigital?
  }.compact
}.flatten.uniq.inject(:+)
