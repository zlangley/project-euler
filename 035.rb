require './euler'

primes = Math.primes_less_than(1000000)

count = 0
primes.each do |p|
  good = true
  s = p.to_s
  0.upto(s.size - 2) do |i|
    if !primes.bsearch((s[i+1..-1] + s[0..i]).to_i)
      good = false 
      break
    end
  end
  count += 1 if good
end
puts count
