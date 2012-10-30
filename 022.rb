names = []
File.new("names.txt", "r").each { |line| names += line.scan(/\w+/) }
puts names.sort.each_with_index.map { |e, i| 
  e.chars.map { |c| c.ord - 'A'.ord + 1 }.inject(:+) * (i + 1)
}.inject(:+)
