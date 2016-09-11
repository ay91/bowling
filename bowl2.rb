require './scoring.rb'
require 'json'

class Bowl

  attr_accessor :pin, :frames

  def initialize
    frames = Array.new
      @frames = frames
      @pin  = 0
  end

  def input_pins
    puts "Enter score in array format"
    input = $stdin.gets
    new_input = JSON.parse(input)

    new_input.each_with_index do |pins, index|
      frames.push(Scoring.new(new_input[index][0], new_input[index][1], new_input[index][2], index))
    end
   self
  end

  def total_score
    final_score = []
    frames.each do |frame|
      # case frames
      #   when !(frames[9].spare) && !(frames(9).strike)
      #     frames.reverse.drop(4).reverse
      #   when frames[9].spare
      #     frames.reverse.drop(3).reverse
      #   when frames[9].strike
      #     frames
      # end

      if frame.seq < 9
        if frame.strike
          @pin += frame.pin + next_two_throws(frame.seq)
        else
          @pin += frame.pin
        end
      end

      if frame.seq >= 9
        @pin += frame.pin
      end
      final_score << pin
    end
    print final_score
  end

  def next_frame(frame_now)
    frames[frame_now + 1]
  end

  def next_two_throws(frame_now)
    next_frame = next_frame(frame_now)
    if next_frame.strike
      next_frame.pin + next_frame(frame_now + 1).throw1
    else
      next_frame.pin
    end
  end

end

Bowl.new.input_pins.total_score
