class Anagram
  def initialize(word)
    @word = word.downcase
  end

  def match(word_array)
    matching_words = []
    word_array.delete(@word)

    word_array.each do |item|
      if item.chars.all? { |letter| item.count(letter.downcase) == @word.count(letter) } && item.size == @word.size && item.downcase != @word
        matching_words << item
      else
        next
      end
    end

    matching_words
  end
end

detector = Anagram.new('ant')
anagrams = detector.match(%w(tan stand at))

p anagrams