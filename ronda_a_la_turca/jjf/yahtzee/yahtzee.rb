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
    number_repetition(dices, 2)
  end

  def three_friends(dices)
    number_repetition(dices, 3)          
  end

  def four_friends
    number_repetition(dices, 4)    
  end

  def scales
    if (dices.uniq.length == dices)
      if (!(dices.include? 6) || !(dices.include? 1))
        return dices.sum
      end
    end
  end

  def full_house
    i = 1
    two = false
    three = false
    while i <= 6  do
      if (dices.count(i) == 2)
        two = true
      end
      if (dices.count(i) == 3)
        three = true
      end
      i +=1
    end
    if (two && three)
      return true
    end
    return false
  end

  private

  def number_repetition(dices, num)
    dices.sort.select { |dice| dice.count(num) }
  end

  def number_category(dices, num)
    dices.select { |dice| dice == num }.sum
  end
end
