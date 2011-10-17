(1..1000).flat_map do |a|
	ans = (a..1000).map do |b|
		c = 1000 - a - b
		puts a*b*c if a*a + b*b == c*c
	end
end
