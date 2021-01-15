# Truong Giang, Huynh
# 1) Copy and past the following Ruby code into a file called carl_sagan.rb and follow the self-contained instructions.

# Using a single puts statement build the following
# sentence using only data from the carl hash and the
# sagan array along with some string interpolation.
#
# We are a way for the cosmos to know itself.

carl  = {
          :toast => 'cosmos',
          :punctuation => [ ',', '.', '?' ],
          :words => [ 'know', 'for', 'we']
        }

sagan = [
          { :are => 'are', 'A' => 'a' },
          { 'waaaaaay' => 'way', :th3 => 'the' },
          'itself',
          { 2 => ['to']}
        ]

# We are a way for the cosmos to know itself.

puts " #{carl[:words][2].capitalize()} #{sagan[0][:are]} #{sagan[0]['A']} #{sagan[1]['waaaaaay']} \
#{carl[:words][1]} #{sagan[1][:th3]} #{carl[:toast]} #{sagan[3][2][0]}  #{carl[:words][0]} #{sagan[2]}#{carl[:punctuation][1]}"
