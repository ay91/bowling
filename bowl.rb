require_relative 'scoring'

class Bowl

  attr_accessor :frames, :pin

  def initialize(frames=[])
    self.pin  = 0
    self.frames = frames
  end

  def input_pins

    input = []
    24.times {|x| input << x = $stdin.gets}
    new_input = input.each_slice(2).to_a

    new_input.each_with_index do |pins, index|
      frames.push(Scoring.new(new_input[index][0], new_input[index][1], index))

    end
   self
  end

  def total_score
    frames.each do |frame|

      if !(frames[9].spare?) && !(frames(9).strike?)
        frames.reverse.drop(4).reverse
      elsif frames[9].spare?
        frames.reverse.drop(3).reverse
      elsif frames[9].strike?
        frames
      end

      if frame.num < 9
        if frame.strike?
          self.pin += frame.pin + next_two_throws(frame.num)
        else
          self.pin += frame.pin
        end
      end

      if frame.num >= 9
        self.pin += frame.pin
      end

      puts "Frame #{frame.num + 1}: #{pin}"
    end
  end

  def next_frame(current_frame)
    frames[current_frame + 1]
  end

  def next_two_throws(current_frame)
    next_frame = next_frame(current_frame)
    if next_frame.strike?
      next_frame.pin + next_frame(current_frame + 1).throw1
    else
      next_frame.pin
    end
  end

end

Bowl.new.input_pins.total_score
