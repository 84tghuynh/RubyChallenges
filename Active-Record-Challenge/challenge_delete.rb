require_relative 'ar.rb'

#Find one of the products you created in challenge_create.rb and delete it from the database.

puts Product.count

product_last = Product.last

puts product_last.inspect

product_last.destroy

puts product_last.inspect

puts Product.count