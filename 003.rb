require './euler'

max, n = 0, 600851475143
2.upto(Math.sqrt(n).to_i) do |i|
  if n % i == 0
    max = [max, i].max if i.prime?
    max = [max, n/i].max if (n/i).prime?
  end
end
puts max
