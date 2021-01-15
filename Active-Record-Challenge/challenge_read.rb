require_relative 'ar.rb'

number_of_products = Product.count

puts "There are #{number_of_products} in the products table."

puts Product.inspect
# Product(id: integer, name: string, description: string,
#         price: decimal, stock_quantity: integer,
#         category_id: integer,
#         created_at: datetime, updated_at: datetime)

# Product has an association with Category

#Total number of products
all_products = Product.all
puts "There are #{all_products.size} in the products table."

#The names of all products above $10 with names that begin with the letter C.
product_data = 'C'
products = Product.where("price > 10 and name LIKE '#{product_data}%'")

products.each do|product|
  puts "#{product.name} : #{product.price}"
end

#Total number of products with a low stock quantity. (Low is defined as less than 5 in stock.)
products = Product.where("stock_quantity < 5")
puts "Total number of products with a low stock quantity is #{products.count}"

# Find the name of the category associated with one of the products you have found.
# (You should do this without referencing the products foreign key value.
# Use the product's "belongs to" association instead.)

first_product = Product.first

puts first_product.inspect

puts first_product.category.name

# Find a specific category and use it to build and persist a new product associated with this category
# (You should do this without manually setting the products foreign key.
# Look at the end of this example file https://github.com/stungeye/ActiveRecord-without-Rails/blob/master/active_record_assoc.rb
# to see how to build an ActiveRecord object by way of an "has many" association.)

beverages_category = Category.where(name: "Beverages").first

puts beverages_category.inspect

new_product = Product.new(name: "Earth of the Huynh", description: "Selling the Earth", price: 100_100_100_100_100_100_100, stock_quantity: 1)
new_product.category = beverages_category;

new_product.save

# Find a specific category and then use it to locate all the the associated products over a certain price.
products_cat = Category.find(2).products.where("price > 5")

products_cat.each do |product|
  puts "Name: #{product.name} - Price: #{product.price} belongs to category: #{product.category.name}"
end







