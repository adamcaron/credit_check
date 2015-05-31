card_number = "4929735477250543"

valid = false

# Your Luhn Algorithm Here

digits = card_number.chars.map.each do |digit|
  digit.to_i
end
puts "The array is #{digits.inspect}"



# Output
## If it is valid, print "The number is valid!"
## If it is invalid, print "The number is invalid!"