class SumOfMultiples
  attr_reader :numbers

  def initialize(*numbers)
    @numbers = numbers
  end

  def to(limit)
    sum = 0
    1.upto(limit - 1).each do |num|
      sum += num if numbers.any? { |n| num % n == 0 }
    end

    sum
  end

  def self.to(limit)
    SumOfMultiples.new(3,5).to(limit)
  end

end
