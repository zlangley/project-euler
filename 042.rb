class String
  def is_triangle_word?
    sum = self.chars.inject(0) { |a,b| a + b.ord - ?A.ord + 1 }
    t = Math.sqrt(8*sum + 1) - 1
    (t.to_i - t).abs < 1e-8 && t.to_i % 2 == 0
  end
end

words = []
File.new("words.txt", "r").each { |line| words += line.scan(/\w+/) }
puts words.count(&:is_triangle_word?)
