# Truong Giang, Huynh
# 4) Using data from the city's open data set figure out how many of our trees may die now
# that the Emerald Ash Borer has been found here
# In other words, how many Ash trees do we have in the city?
# Then write a program to automatically count all the Ash trees in the dataset
# Remember that there are different types of ash trees.

require 'net/http'
require 'json'
require 'pp'

#url = 'https://data.winnipeg.ca/resource/d3jk-hb6j.json'
url = 'https://data.winnipeg.ca/resource/d3jk-hb6j.json?$limit=306000'
uri = URI(url)
response = Net::HTTP.get(uri)
ash_trees = JSON.parse(response) # Convert JSON data into Ruby data.
#pp ash_trees # pp stands for pretty print.

count = 0
ash_trees.each do | tree|
    if((tree["botanical_name"].include? 'Fraxinus') && (tree["common_name"].include? 'ash'))
      #puts "Botanical name: #{tree["botanical_name"]} and Commom name: #{tree["common_name"]}"
      count +=1
    end

end

puts "Count: #{count}"
