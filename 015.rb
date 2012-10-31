# Alternatively: puts (21..40).inject(:*)/(1..20).inject(:*)
grid = Array.new(21) { Array.new(21, 1) }
1.upto(grid.size - 1) do |r|
  1.upto(grid[r].size - 1) do |c|
    grid[r][c] = grid[r][c - 1] + grid[r - 1][c]
  end
end
puts grid[20][20]
