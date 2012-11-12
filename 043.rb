def sum_pandigital(cur)
  if cur.length == 10
    cur.to_i
  else
    sum = 0
    d = [1, 1, 1, 2, 3, 5, 7, 11, 13, 17]
    ('0'..'9').each do |j|
      next if cur.include?(j)
      last_two = cur[-2..-1] || ""
      sum += sum_pandigital(cur + j) if (last_two + j).to_i % d[cur.length] == 0
    end
    sum
  end
end

puts sum_pandigital("")
