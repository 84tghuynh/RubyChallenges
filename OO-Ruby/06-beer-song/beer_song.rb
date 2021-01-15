class BeerSong
  def build_verse(n1)
    if n1 == 0
      nu_bottles_total = "no more"
      nu_bottles_remainder = 99

      verse_0 = "#{nu_bottles_total.capitalize} bottles of beer on the wall, #{nu_bottles_total} bottles of beer.\n" \
                "Go to the store and buy some more, #{nu_bottles_remainder} bottles of beer on the wall.\n"
    elsif n1 == 1
      nu_bottles_total = n1
      nu_bottles_remainder = "no more"

      verse_1 = "#{nu_bottles_total} bottle of beer on the wall, #{nu_bottles_total} bottle of beer.\n" \
             "Take it down and pass it around, #{nu_bottles_remainder} bottles of beer on the wall.\n"

    else
      nu_bottles_total = n1
      nu_bottles_remainder = n1 - 1

      unit = if nu_bottles_remainder == 1
               "bottle"
             else
               "bottles"
             end
      verse_n = "#{nu_bottles_total} bottles of beer on the wall, #{nu_bottles_total} bottles of beer.\n" \
             "Take one down and pass it around, #{nu_bottles_remainder} #{unit} of beer on the wall.\n"
    end
  end

  def verse(n1)
    build_verse(n1)
  end

  def verses(n1, n2)
    song = ""
    i = n1
    while i >= n2
      if i == n1
        song = build_verse(i)
      else
        song += "\n" + build_verse(i)
      end
      i -= 1
    end
    song
  end

  def lyrics
    verses(99, 0)
  end
end

# puts BeerSong.new.verse(1)

# expected = "99 bottles of beer on the wall, 99 bottles of beer.\n" \
# "Take one down and pass it around, 98 bottles of beer on the wall.\n" \
# "\n" \
# "98 bottles of beer on the wall, 98 bottles of beer.\n" \
# "Take one down and pass it around, 97 bottles of beer on the wall.\n"

# puts BeerSong.new.verses(99, 98)

# puts "--------------------"

# puts expected

#puts BeerSong.new.lyrics
