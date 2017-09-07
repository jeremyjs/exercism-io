
module Hamming
  module_function

  def compute(strand_1, strand_2)
    raise ArgumentError unless strand_1.length.eql? strand_2.length
    zipped_strands(strand_1, strand_2).map { |pair| chars_eql(pair) }.reject { |result| !!result }.count
  end

  def zipped_strands(strand_1, strand_2)
    strand_1.chars.zip(strand_2.chars)
  end

  def chars_eql(chars)
    chars[0].eql? chars[1]
  end
end

module BookKeeping
  VERSION = 3
end
