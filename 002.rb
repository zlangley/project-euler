Fibonacci = Enumerator.new do |yielder|
	a, b = 1, 1
	loop do
		yielder.yield a
		a, b = b, a + b
	end
end

puts Fibonacci.take_while { |f| f < 4e6 }.select(&:even?).inject(:+)
