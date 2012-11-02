require './euler'

# pandigital numbers with 8 or 9 digits are divisible by 3
7654321.downto(0) do |n|
  if n.prime? && n.to_s.pandigital?
    puts n
    exit
  end
end
