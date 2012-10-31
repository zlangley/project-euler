class Integer
  def abundant?
    sum, i = 1, 2
    while i*i <= self
      if self % i == 0
        sum += i
        sum += self/i if i != self/i
      end
      i += 1
    end
    sum > self
  end
end

def sum_between(start, finish)
  [finish*(finish+1)/2 - start*(start-1)/2, 0].max
end

abundant = (12..28213).select(&:abundant?)

seen = {}
sums = [0]
abundant.size.times do |i|
  i.upto(abundant.size - 1) do |j|
    sum = abundant[i] + abundant[j]
    if sum < 28213 && !seen[sum]
      sums << sum
      seen[sum] = true
    end
  end
end
sums.sort!
puts (1..sums.size-1).map { |i| sum_between(sums[i-1]+1, sums[i]-1) }.inject(:+)
