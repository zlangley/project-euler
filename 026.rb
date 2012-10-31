def cycle_length(n)
  r, count = 1, 0
  rems = {}
  until r.zero? || rems[r]
    rems[r] = true
    count += 1
    r *= 10 while r < n
    r = r % n
  end
  count
end

puts (1..999).map { |x| [cycle_length(x), x] }.max[1]
