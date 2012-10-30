class Integer
  def factorial
    return 1 if self <= 1
    return self * (self - 1).factorial
  end
end

puts 100.factorial.to_s.chars.map(&:to_i).inject(:+)
