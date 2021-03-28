class DNA
  attr_accessor :strand

  def initialize(strand)
    @strand = strand
  end

  def hamming_distance(other_strand)
    shorter = strand.size < other_strand.size ? strand : other_strand
    counter = 0

    shorter.length.times do |index|
      counter += 1 unless strand[index] == other_strand[index]
    end

   counter
  end
end