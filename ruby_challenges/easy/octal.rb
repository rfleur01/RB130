class Octal
attr_reader :number

  def initialize(number)
    @number = number
  end

  def to_decimal
    return 0 if number.chars.any?(/[^0-7]|[A-Za-z]/)

    sum = 0
    number.to_i.digits.each_with_index do |num, index|
      sum += num * (8**index)
    end

    sum
  end
end

p Octal.new('carrot').to_decimal