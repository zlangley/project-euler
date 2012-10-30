def word_length(n) # assumes 1 <= n <= 1000
  return "onethousand".size if n == 1000

  ones = [ 4, 3, 3, 5, 4, 4, 3, 5, 5, 4, 3, 6, 6, 8, 8, 7, 7, 9, 8, 8 ]
  tens = [ 4, 3, 6, 6, 5, 5, 5, 7, 6, 6 ]

  len = 0
  case n % 100
  when 1..19
    len += ones[n % 100]
  when 20, 30, 40, 50, 60, 70, 80, 90
    len += tens[(n/10) % 10]
  when 21..99
    len += tens[(n/10) % 10] + ones[n % 10]
  end

  hundreds_digit = (n / 100) % 10
  if hundreds_digit != 0
    len += "and".size if n % 100 != 0
    len += ones[hundreds_digit] + "hundred".size
  end
  len
end

puts (1..1000).map { |n| word_length(n) }.inject(:+)
