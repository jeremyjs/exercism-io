class Hamming
  def self.compute(strand_1, strand_2)
    raise ArgumentError if strand_1.length != strand_2.length
    strand_1.chars.zip(strand_2.chars).count do |char_1, char_2|
      char_1 != char_2
    end
  end
end

module BookKeeping
  VERSION = 3
end
