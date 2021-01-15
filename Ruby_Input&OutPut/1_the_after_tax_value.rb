# 1) Write a Ruby program to calculate the after tax value of a specific dollar amount.
# Truong Giang, Huynh

sub_total = 5.00
PST = 0.07
GST = 0.05

pst_tax = sub_total * PST
gst_tax = sub_total * GST

grand_total = sub_total + sub_total * (PST + GST)

puts format("Subtotal: $%0.2f", sub_total)
puts format("PST: $%0.2f - %0.1f%s", pst_tax, (PST * 100), "%")
puts format("GST: $%0.2f - %0.1f%s", gst_tax, (GST * 100), "%")
puts format("Grand Total: $%0.2f", grand_total)
