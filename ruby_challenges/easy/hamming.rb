class DNA
  attr_accessor :strand

  def initialize(strand)
    @strand = strand
  end

  def hamming_distance(other_strand)
    distance = 0
    shorter_strand = strand.size < other_strand.size ? strand : other_strand

    shorter_strand.size.times do |index|
      distance += 1 if strand[index] != other_strand[index]
    end

    distance
  end
end