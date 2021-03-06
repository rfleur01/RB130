class BeerSong
  def self.verses(start, stop)
    result = []
    (stop..start).to_a.reverse.each do |num|
      result << verse_block(num)
    end

    result.join("\n")
  end

  def self.verse(number)
    verse_block(number)
  end

  def self.verse_block(number)
    if number > 2
      "#{number} bottles of beer on the wall, #{number} bottles of beer.\n" +
      "Take one down and pass it around, #{number - 1} bottles of beer on the wall.\n"
    elsif number == 1
      "1 bottle of beer on the wall, 1 bottle of beer.\n" +
      "Take it down and pass it around, no more bottles of beer on the wall.\n"
    elsif number == 2
      "2 bottles of beer on the wall, 2 bottles of beer.\n" +
      "Take one down and pass it around, 1 bottle of beer on the wall.\n"
    else
      "No more bottles of beer on the wall, no more bottles of beer.\n" +
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    end
  end

  def self.lyrics
    verses(99,0)
  end
end