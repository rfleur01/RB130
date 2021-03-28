class Triangle
  attr_accessor :sides
  def initialize(side1, side2, side3)
    @sides = [side1, side2, side3]
    raise ArguementError.new "Side lengths must be greater than zero!" unless valid?
  end

  def valid?
    sides.min > 0 &&
    sides[0] + sides[1] >= sides[2] &&
    sides[1] + sides[2] >= sides[0] &&
    sides[0] + sides[2] >= sides[1]
  end

  def kind
    if sides.uniq.size == 1
      'equilateral'
    elsif sides.uniq.size == 2
      'isosceles'
    else
      'scalene'
    end
  end
end