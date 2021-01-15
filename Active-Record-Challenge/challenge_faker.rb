require_relative 'ar.rb'

Category.connection
#Category(id: integer, name: string, description: string, created_at: datetime, updated_at: datetime)

puts Category.count
puts Product.count

10.times {
    new_category = Category.new(name: Faker::Company.unique.name, description: Faker::Company.industry)
    new_category.save

    10.times {
        new_product = Product.new(name: Faker::Name.unique.name, description: Faker::Beer.name, price: Faker::Number.decimal(l_digits: 2) , stock_quantity: Faker::Number.within(range: 1..10) )
        new_product.category = new_category
        new_product.save
    }
}

puts Product.count
puts Category.count


