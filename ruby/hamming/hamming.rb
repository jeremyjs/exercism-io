module Hamming
  module_function

  def compute(strand_1, strand_2)
    raise ArgumentError unless strand_1.length.eql? strand_2.length
    hamming_distance(strand_1, strand_2)
  end

  private_class_method

  def chars_differ(char_1, char_2)
    char_1 != char_2
  end

  def hamming_distance(strand_1, strand_2)
    num_different_chars(zipped_strands(strand_1, strand_2))
  end

  def num_different_chars(zipped_strands)
    zipped_strands.count { |pair| chars_differ(*pair) }
  end

  def zipped_strands(strand_1, strand_2)
    strand_1.chars.zip(strand_2.chars)
  end
end

module BookKeeping
  VERSION = 3
end
