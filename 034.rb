@fact_sum = [1]
1.upto(9) { |i| @fact_sum[i] = i * @fact_sum[i-1] }

def fact_digit_sum(n)
  if @fact_sum[n]
    @fact_sum[n]
  else
    @fact_sum[n] = @fact_sum[n % 10] + fact_digit_sum(n/10)
  end
end

puts (1..1000000).select { |x| fact_digit_sum(x) == x }.inject(:+)
