# 3)Do some research online to figure out how to read keyboard input from Ruby and how to convert strings into floats.
# Truong Giang, Huynh

# Method check str is a number or not
# return true is a number
# rescue (Exception): when str is not a number
def is_number(str)
  true if Float(str)
rescue StandardError
  false
end

print "Enter SubTotal: "
sub_total = gets.chomp

until is_number(sub_total)
  puts "Subtotal is not a number"
  print "Enter SubTotal: "
  sub_total = gets.chomp
end

sub_total = sub_total.to_f
PST = 0.07
GST = 0.05

pst_tax = sub_total * PST
gst_tax = sub_total * GST

grand_total = sub_total + sub_total * (PST + GST)

puts format("Subtotal: $%0.2f", sub_total)
puts format("PST: $%0.2f - %0.1f%s", pst_tax, (PST * 100), "%")
puts format("GST: $%0.2f - %0.1f%s", gst_tax, (GST * 100), "%")
puts format("Grand Total: $%0.2f", grand_total)

# If the grand total is equal to or less than $5.00 then message should be: "Pocket Change"
# If the grand total is greater than $5.00 but less than $20 the message should be: "Wallet Time"
# If the grand total is equal to or greater than $20 the message should be: "Charge It!"
if grand_total <= 5.00
  puts "Pocket Change"
elsif grand_total > 5.00 && grand_total < 20
  puts "Wallet Time"
else
  puts "Charge It!"
end

