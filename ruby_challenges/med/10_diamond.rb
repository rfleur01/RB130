class Diamond
  def self.make_diamond(letter)
    result = []
    letters = ('A'...letter).to_a + ('A'..letter).to_a.reverse

    letters.each do |let|
      result << rows(let).center(max_width(letter))
    end

    result.join("\n") + "\n"
  end

  def self.rows(letter)
    return "A" if letter == 'A'
    return "B B" if letter == 'B'

    letter + calc_width(letter) + letter

  end

  def self.calc_width(letter)
    all_letters = ['B']
    space = 1

    until all_letters.include?(letter)
      current_letter = all_letters[-1]
      all_letters << current_letter.next
      space += 2
    end

    ' ' * space
  end

  def self.max_width(letter)
    return 1 if letter == 'A'

    calc_width(letter).count(' ') + 2
  end
end