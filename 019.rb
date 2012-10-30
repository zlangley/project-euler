days_in_month = [ 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 ]
count, weekday = 0, 2 # Jan 1st 1901 was a Tuesday
1901.upto(2000) do |year|
  leapyear = (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
  days_in_month.each_with_index do |e, month|
    count += 1 if weekday == 0
    weekday = (weekday + e + (month == 1 && leapyear ? 1 : 0)) % 7
  end
end
puts count
