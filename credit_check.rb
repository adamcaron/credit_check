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
puts "New array: #{every_other.inspect}"

# Summed digits over 10

# every_other.each do |d|
#   if d.is_a? Fixnum && d > 9
#     puts d
#   end
# end

# Output
## If it is valid, print "The number is valid!"
## If it is invalid, print "The number is invalid!"