card_number = "4929735477250543"
valid = false

# Luhn Algorithm

# From the rightmost digit, moving left, double the value of every second digit.
digits = card_number.chars.map.each {|digit| digit.to_i}
digits.reverse!
doubled = []
digits.each_index do |d|
  d.odd? ?
  doubled << digits[d] * 2
  : doubled << digits[d]
end

# Sums the digits of double-digit integers
summed = []
doubled.each do |integer|
  if integer > 9
    sum = integer.to_s.chars
    summed << sum[0].to_i + sum[1].to_i
  else
    summed << integer
  end
end
result = summed.inject{ |sum, x| sum + x }

# Output
if result % 10 == 0
  valid = true
  puts "The number is valid!"
else
  puts "The number is invalid!"
end