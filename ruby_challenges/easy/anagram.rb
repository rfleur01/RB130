class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word.downcase
  end

  def match(words)
    words.select do |ana|
      ana.chars.all? { |a| word.count(a.downcase) == ana.downcase.count(a.downcase) } &&
      ana.size == word.size &&
      ana.downcase != word
    end.sort
  end
end
