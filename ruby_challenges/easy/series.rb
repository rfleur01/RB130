class Series
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def slices(length)
    raise ArgumentError if length > number.size
    @number.chars.map(&:to_i).each_cons(length).to_a
  end
end