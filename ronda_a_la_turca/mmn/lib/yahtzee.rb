class Yahtzee
  def self.suerte(list)
    list.inject(:+)
  end

  def self.yahtzee(list)
    first = list[0]
    list.each { |it| return 0 if it != first }
    50
  end

  def self.cuadras(list)
    list.inject(0) { |sum, it| it == 4 ? sum + it : sum }
  end

  def self.tontos(list)
    list.inject(0) { |sum, it| it == 2 ? sum + it : sum }
  end

  def self.ases(list)
    list.inject(0) { |sum, it| it == 1 ? sum + it : sum }
  end

  def self.parejas(list)
    counter = {}
    parejas = list.each do |it|
      counter[it] = 0 unless counter[it]
      counter[it] += 1
    end.to_a.select { |it| it[1] == 2 }

  end
end
