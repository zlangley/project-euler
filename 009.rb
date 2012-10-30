(1..1000).map do |a|
  ans = (a..1000).map do |b|
    c = 1000 - a - b
    if a*a + b*b == c*c
      puts a*b*c
      exit
    end
  end
end
