class Scoring
  attr_accessor :throw1, :throw2, :num

  def initialize(throw1, throw2, num)
    self.throw1  = throw1.to_i if throw1
    self.throw2  = throw2.to_i if throw2
    self.num = num
  end

  def strike?
    throw1.eql?(10)
  end

  def spare?
    (throw1 + throw2).eql?(10)
  end

  def pin
    throw1 + throw2.to_i
  end

end
