require 'pry'
class BuscaMinas
  attr_reader :dimensions

  def initialize
    @dimensions = []
    @rows = []
    @result = Array.new(Array.new(0))
  end

  def run
    load_input
    process_matrix
  end

  def load_input
    File.foreach('input_busca_minas.txt').map.with_index do |line, i|
      if i.zero?
				@dimensions = to_s.split(" ").map(&:to_i)
			else
        puts line
				@rows << line.chars
			end
		end
  end

  def process_matrix
    dimensions.first.times do |px|
      dimensions.last.times do |py|
        if is_a_mine?(px, py)
          @result[px,py] = '*'
          add_1_to_adjacent(px, py)
        end
      end
    end
  end

  def is_a_mine?(x, y)
    @rows[x][y] == '*'
  end

  def add_1_to_adjacent(x, y)
    @result[x - 1][y] += 1 unless is_a_mine(x - 1,y) || x.zero?
    @result[x + 1][y] += 1 unless is_a_mine(x + 1,y) || x == dimensions.first - 1
    @result[x][y - 1] += 1 unless is_a_mine(x,y - 1) || y == 0
    @result[x][y +1 ] += 1 unless is_a_mine(x,y + 1) || y ==  dimensions.last - 1
  end
end

buscaminas = BuscaMinas.new
puts "Leyendo"
result = buscaminas.run
puts result
