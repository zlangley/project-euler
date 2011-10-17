require 'mathn'
puts Prime.take_while { |p| p <= 20 }.map { |i| i**Math.log(20, i).to_i }.inject(:*)
