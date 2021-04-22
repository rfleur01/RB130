class Triangle
  def initialize(side1, side2, side3)
    @sides = [side1, side2, side3]
    raise ArgumentError.new "Invalid triangle lengths" unless valid?
  end

  def kind
    if @sides.uniq.size == 1
      "equilateral"
    elsif @sides.uniq.size == 2
      "isosceles"
    else
      "scalene"
    end
  end

  private

  def valid?
    @sides.all? { |side| side > 0 } &&
    @sides.min(2).reduce(:+) > @sides.max
  end
end