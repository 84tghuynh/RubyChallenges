class Year
  def self.leap?(year)
    if (year.remainder(4) == 0 && year.remainder(100) != 0) || (year.remainder(100) == 0 && year.remainder(400) == 0)
      true
    end
  end
end
