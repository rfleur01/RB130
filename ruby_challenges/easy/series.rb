class Series
  def initialize(number)
    @number = number
  end

  def slices(n)
    raise ArgumentError if n > @number.size
    @number.chars.map(&:to_i).each_cons(n).to_a
  end
end

series = Series.new('37103')
p series.slices(2)