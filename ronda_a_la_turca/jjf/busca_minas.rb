class BuscaMinas
  attr_reader :dimensions

  def initialize
    @dimensions = []
    @rows = []
  end

  def load_input
    File.foreach('input_busca_minas.txt').map.with_index do |line, i|
      if i.zero?
				to_s.split("").map(&:to_i)

			else
				@rows << line
			end
		end
  end

  def create_matriz

  end
end
