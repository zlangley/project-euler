denoms = [1, 2, 5, 10, 20, 50, 100, 200]
table = Array.new(8) { Array.new(201, 0) }

(0..7).each { |i| table[i][0] = 1 }

denoms.each_with_index do |d, i|
  1.upto(200) do |c|
    table[i][c] = table[i-1][c] if i > 0
    table[i][c] += table[i][c-d] if c >= d
  end
end
puts table[7][200]
