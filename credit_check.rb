card_number = "4929735477250543"

valid = false

# Your Luhn Algorithm Here

digits = card_number.chars.map.each {|digit| digit.to_i}
# From the rightmost digit, moving left, double the value of every second digit.
puts "Original array: #{digits.inspect}"
digits.reverse!
puts "Reversed array: #{digits.inspect}"
every_other = []

digits.each_index do |d|
  d.odd? ?
  every_other << digits[d] * 2
  : every_other << digits[d]
end
puts "Doubled array: #{every_other.inspect}"

# Summed digits over 10

summed = []
every_other.each do |integer|
  if integer > 9
    sum = integer.to_s.chars
    summed << sum[0].to_i + sum[1].to_i
  else
    summed << integer
  end
end
puts "Summed array: #{summed.inspect}"

# Output
## If it is valid, print "The number is valid!"
## If it is invalid, print "The number is invalid!"