card_number = "4929735477250543"

valid = false

# Your Luhn Algorithm Here

digits = card_number.chars.map.each {|digit| digit.to_i}
digits.push("x") # append a check digit
# From the rightmost digit (wich is the check number: x), moving left, doublw the value of every second digit.
puts "Original array: #{digits.inspect}"
digits.reverse!
puts "Reversed array: #{digits.inspect}"
every_other = []

digits.each_index do |d|
  if d.odd?
    every_other << digits[d] * 2
  else
    every_other << digits[d]
  end
end
puts "New array: #{every_other.inspect}"

# print digits.values_at(* digits.each_index.select { |i| i.odd? }).map! { |n| n * 2 }

# digits.values_at(* digits.each_index.select do |i|
#   i.odd?
#   i * 2
# end )

# digits.values_at(* digits.each_index.map!)


# Output
## If it is valid, print "The number is valid!"
## If it is invalid, print "The number is invalid!"