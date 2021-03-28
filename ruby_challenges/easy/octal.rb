class Octal
  def initialize(string)
    @string = string.chars.all? { |n| n =~ /[0-7]/ } ? string : "0"
  end

  def to_decimal
    octal = []

    @string.chars.reverse.each_with_index { |str, index| octal << str.to_i * (8**index) }

    octal.reduce(:+)
  end
end

p Octal.new('carrot').to_decimal