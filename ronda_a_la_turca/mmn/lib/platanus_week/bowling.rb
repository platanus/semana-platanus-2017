class Bowling
  attr_accessor :turn_counter, :last_turn, :frames

  def initialize
  	@turn_counter = 1
  	@score = []
  end
  
  def record(_shots = [])
  	throw "Invalid turn" if !turn_is_valid(_shots)
    # ejs: [1,9]
    #      [2,0]
    @turn_counter += 1
    @score.push(_shots)
  end

  def finished
    return true if @turn_counter > 10 
    return false if @turn_counter < 10
    if last_turn.sum == 10
      # caso en que el turno 10 fue strike o spare, aún no termina!
      return false
    else
      return true
    end
  end

  def score(_frame)
  	return nil if @turn_counter < 10
  	return @score unless _frame

  	if _frame do
  	  turnsSoFar = @score[0, _frame]
  	  scores = turnsSoFar.each( |turn| turn.inject(&:+) )
  	end
  end

  def turn_is_valid(_shots)
  	return true if _shots.inject(&:+) <= 10 && _shots.length <= 2
  end
end
