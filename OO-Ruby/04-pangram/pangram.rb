class Pangram
  alphabet = []
  def self.is_pangram?(str)
    flag = true
    for i in 97..122 do
      if(!str.downcase.include?(i.chr.to_s))
        flag = false
        break
      end
    end

  end

#  def self.nu_to_char
#    puts "#{97.chr}..#{122.chr}"
#  end
end

#Pangram.nu_to_char
