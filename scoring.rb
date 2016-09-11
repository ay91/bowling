class Scoring
  attr_accessor :throw1, :throw2, :throw3, :seq

  def initialize(throw1, throw2, throw3, seq)
    @throw1 = throw1.to_i
    @throw2 = throw2.to_i
    @throw3 = throw3.to_i
    @seq = seq
  end

  def strike
    throw1.eql?(10)
  end

  def spare
    (throw1 + throw2).eql?(10)
  end

  def pin
    throw1 + throw2 + throw3.to_i
  end

end
