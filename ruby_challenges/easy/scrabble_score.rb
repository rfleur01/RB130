class Scrabble
  attr_accessor :word

  SCORECARD = {
    %w(A E I O U L N R S T) => 1,
    %w(D G) => 2,
    %w(B C M P) => 3,
    %w(F H V W Y) => 4,
    %w(K) => 5,
    %w(J X) => 8,
    %w(Q Z) => 10
  }

  def initialize(word)
    @word = word
  end

  def score
    total = 0
    return total if @word == nil

    word.chars.each do |letter|
      SCORECARD.each do |key, value|
        total += value if key.include?(letter.upcase)
      end
    end

    total
  end

  def self.score(word)
    Scrabble.new(word).score
  end
end

p Scrabble.new('CABBAGE').score