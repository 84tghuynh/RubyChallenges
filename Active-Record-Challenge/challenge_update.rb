require_relative 'ar.rb'

#Find all products with a stock quantity greater than 40.
#Add one to the stock quantity of each of these products and then save these changes to the database.

products_stock_quantity = Product.where("stock_quantity > 40")

puts products_stock_quantity.count

products_stock_quantity.each do |product|
  product.update(stock_quantity: product.stock_quantity+1)
end

products_stock_quantity.each do |product|
  puts "#{product.name} - #{product.stock_quantity}"
end