require_relative 'ar.rb'
puts Product.count

new_product = Product.new

#validates :name, :description, :price, :stock_quantity, presence: true
new_product.name = "Moon of the Giang"
new_product.description = "Selling the moon"
new_product.price = 100_100_100_100_000
new_product.stock_quantity = 1
new_product.save

puts new_product.inspect
puts Product.count


sun = Product.new(name: "Sun of the Truong", description: "Selling the Sun", price: 100_100_100_100_100_100_100, stock_quantity: 1)
sun.save

puts sun.inspect
puts Product.count

universal = Product.create(name: "Solar System of the Huynh", description: "Selling the Solar System", price: 100_100_100_100_100_100_100, stock_quantity: 1)

puts universal.inspect
puts Product.count


missing_info_product = Product.create(name: "Uni", price:22020202)

unless missing_info_product.valid?
  puts "There was a validation error witht the following properties:"

  missing_info_product.errors.messages.each do |column, errors|
    errors.each do |error|
      puts "The #{column} #{error}"
    end
  end
end