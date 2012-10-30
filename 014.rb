@cache = Array.new(1_000_000)
def chain_length(n)
  if n == 1
    1
  elsif @cache[n]
    @cache[n]
  else
    ans = 1 + (n.even? ? chain_length(n/2) : chain_length(3*n + 1))
    @cache[n] = ans if n <= @cache.size
    ans
  end
end

puts (1..1_000_000).map { |x| [chain_length(x), x] }.max[1]
