puts (1..10000).map { |n|
  concat = ""
  len = 0
  good = true
  seen = Array.new(10, false)
  1.upto(9) do |i|
    prod = copy = n * i
    while copy > 0 && len < 9 && good
      break if seen[copy % 10] || copy % 10 == 0
      seen[copy % 10] = true
      copy /= 10
      len += 1
    end
    concat += prod.to_s
    good = false if copy > 0
    break if len == 9 || !good
  end
  concat if good && !seen[1..-1].include?(false)
}.compact.max
