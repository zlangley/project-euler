class Integer
  def is_pentagonal?
    s = Math.sqrt(1 + 24*self)
    (s - s.to_i).abs < 1e-8 && (s.to_i + 1) % 6 == 0
  end
end

i = 144
h = 2*i*i - i
until h.is_pentagonal?
  h += 4*i + 1
  i += 1
end
puts h
