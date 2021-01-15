# Truong Giang, Huynh
# 2) Create an array of hashes named ‘ghosts’ to hold the following information:

# Inky is 4 years old, loves reindeers and has 25 dollars in the bank.
# Pinky is 5 years old, loves garden tools and has 14 dollars in the bank.
# Blinky is 7 years old, loves ninjas and has 18.03 dollars in the bank.
# Clyde is 6 years old, loves yarn and has 0 dollars in the bank.

ghosts =  [

            { name: 'Inky',   age: 4, loves: 'reindeers',    net_worth: 25},
            { name: 'Pinky',  age: 5, loves: 'garden tools', net_worth: 14},
            { name: 'Blinky', age: 7, loves: 'ninjas',       net_worth: 18.03},
            { name: 'Clyde',  age: 6, loves: 'yarn',         net_worth: 0}
          ]

ghosts.each do |ghost|
  ghost_info  = "#{ghost[:name]} is #{ghost[:age]} years old, "
  ghost_info += "loves #{ghost[:loves]} and "
  ghost_info += "has #{ghost[:net_worth]} dollars in the bank."
  puts ghost_info
end