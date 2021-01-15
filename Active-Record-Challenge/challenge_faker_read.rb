require_relative 'ar.rb'

# Find all the categories in the database (including those that you added using Faker).
# Display all category names and their associated products (name and price) in a nicely formatted list.

def format_ouput(str1,str2)
  len = 50 - str1.length
  space = "#{'-' * len}".to_s
  str1.concat(space)
  str1.concat(str2.to_s)
  str1
end

categories_all = Category.all

categories_all.each do |cate|
  puts "********* #{cate.name} *********"
  puts format_ouput("Product Name","Price")
  products_cat = Category.find(cate.id).products

  products_cat.each do |prod|
    puts format_ouput(prod.name,prod.price)
  end
end




