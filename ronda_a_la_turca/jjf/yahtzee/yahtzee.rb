# Yahtzee Dice Game Calculator
class Yahtzee

  def get_dices
    dices = []
    5.times do
      dices << rand(1..6)
    end
  end


  def suerte(dices)
    dices.inject(:+)
  end

  def yahtzee
    if dices.uniq.count == 1
      50
    else
      0
    end
  end

  def ases(dices)
    number_category(dices, 1)
  end

  def tontos(dices)
    number_category(dices, 2)
  end

  def trenes(dices)
    number_category(dices, 3)
  end

  def cuadras(dices)
    number_category(dices, 4)
  end

  def quinas(dices)
    number_category(dices, 5)
  end

  def sextas(dices)
    number_category(dices, 6)
  end

  def pairs(dices)
    dices.sort.select { |dice| dice.count(2) }
  end

  def three_friends(dices)
  
  end

  def four_friends
    
  end

  def scale
    
  end

  def big_scale
    
  end

  def full_house
    
  end

  private

  def number_category(dices, num)
    dices.select { |dice| dice == num }.sum
  end
end
