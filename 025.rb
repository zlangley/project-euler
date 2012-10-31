i, a, b = 1, 1, 1
while a.to_s.size != 1000
  a, b = b, a + b
  i += 1
end
puts i
