class SumOfMultiples
  def initialize(*set)
    @set = set
  end

  def to(number)
    multiples = []

    @set.each do |num|
      1.upto(number - 1) { |n| multiples << n if n % num == 0 && !multiples.include?(n) }
    end

    return 0 if multiples.empty?
    multiples.reduce(:+)
  end

  def self.to(number)
    SumOfMultiples.new(3, 5).to(number)
  end
end
