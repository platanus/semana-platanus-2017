class BuscaMinas
  attr_reader :dimensions

  def initialize
    @dimensions = []
    @rows = []
  end

  def load_input
    File.foreach('input_busca_minas.txt').map.with_index do |line, i|
      if i.zero?
				dimensions = to_s.split(" ").map(&:to_i)
			else
        puts line
				@rows << line
			end
		end
  end

  def create_matriz(lines, size)

  end
end

buscaminas = BuscaMinas.new
puts "Leyendo"
buscaminas.load_input
