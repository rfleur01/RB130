class PerfectNumber
  def self.classify(number)
    raise StandardError.new if number < 1
    divisor = []
    1.upto(number - 1) { |num| divisor << num if number % num == 0 }

    divisor_sum = divisor.reduce(:+)
    if divisor_sum == number
      'perfect'
    elsif divisor_sum > number
      'abundant'
    else
      'deficient'
    end
  end
end

p PerfectNumber.classify(13)