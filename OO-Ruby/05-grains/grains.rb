class Grains
  def self.square(n)
    return 1 if n == 1

    2 * square(n - 1)
  end

  def self.total(n = 64)
    return square(1) if n == 1

    square(n) + total(n - 1)
  end
end

# square(1) = 1
# square(2) = 2*square(1) = 2*1 = 2
# square(3) = 2*square(2) = 2*2*square(1)=2*2*1 = 4
# square(4) = 2*square(3) = 2*2*square(2)=2*2*2*square(1) =2*2*2*1 = 8

# puts Grains.square()
# puts Grains.total
