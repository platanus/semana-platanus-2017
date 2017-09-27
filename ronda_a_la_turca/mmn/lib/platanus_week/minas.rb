class Minas
	attr_accessor :width, :height, :field, :number_field

	def initialize(data)
		splitted_data = data.split("\n")
		headers = splitted_data[0].split(" ")

		@width 	= headers[0].to_i
		@height = headers[1].to_i

		splitted_data.shift

		@field = splitted_data.map { |row| row.split("") }
	end

	def perform
		calc_field_numbers
    print_field_numbers
	end

	def calc_field_numbers
		# usar un hash para guardar el conteo de minas adyacentes

		@number_field = Hash.new 0
    
    @height.times do |y|
    	@width.times do |x|
    		if field[y][x] == '*' 
    			[-1,0,1].each do |i|
    				[-1,0,1].each do |j|
		    			if inside_the_field?(x+i,y+j) && ( i != 0 or j != 0 )
		    			  @number_field["#{x+i},#{y+j}"] += 1 
		    		  end
		    		end
		    	end
    		end
    	end
    end
	end

	def print_field_numbers
		@height.times do |y|
    	@width.times do |x|
    		if field[y][x] == '*'
    			print "*"
    		else
    		  print @number_field["#{x},#{y}"] || " "
    		end
    	end
    	puts ""
    end
	end

	def inside_the_field? x,y
		x < @width  && x >= 0  &&
	  y < @height && y >= 0
	end
end
