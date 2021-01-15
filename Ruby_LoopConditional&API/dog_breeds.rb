# Truong Giang, Huynh
# 3) Write a script that uses the JSON provided by the dog.ceo API
# to print out a nicely formatted list of dog breeds and sub-breeds.

require 'net/http'
require 'json'
require 'pp'

url = 'https://dog.ceo/api/breeds/list/all'
uri = URI(url)
response = Net::HTTP.get(uri)
dog_breeds = JSON.parse(response) # Convert JSON data into Ruby data.
#pp dog_breeds # pp stands for pretty print.

dog_breeds["message"].each do | dog, sub_breed|
  puts "* #{dog.capitalize()}"
  sub_breed.each do | breed |
   puts "  * #{breed.capitalize()}"
  end
end





