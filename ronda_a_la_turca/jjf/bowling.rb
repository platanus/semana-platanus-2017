class Bowling
  attr_accessor :shots, :rush, :frame
  
  def record (_shots)
    if (_shots.length == 1 || _shots.length == 2)
      if (shots[0] + shots[1] <= 10)
        shots = shots.push(_shots)
        frame = frame + (_shots.sum * (1 + rush))
        rush = rush - 1
        if (shots[0] == 10)
          rush = 2
          rush += 2 if frame == 10
        elsif (shots[0] + shots[1] == 10)
          rush = 1
          rush += 1 if frame == 10
        end
      end
    end

    if 
  end

  def self.finished
    if shots.length < 10
      false
    elsif shots.last.sum == 10
      false
    else
      true
    end
  end

  def score
    shots.flatten.inject(0){|sum,x| sum + x } if finished
  end

  def score_frame(_frame)
    shots[frame]
  end
end

bowling = Bowling.new
bowloing





